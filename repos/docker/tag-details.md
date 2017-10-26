<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17`](#docker17)
-	[`docker:17.06`](#docker1706)
-	[`docker:17.06.2`](#docker17062)
-	[`docker:17.06.2-ce`](#docker17062-ce)
-	[`docker:17.06.2-ce-dind`](#docker17062-ce-dind)
-	[`docker:17.06.2-ce-git`](#docker17062-ce-git)
-	[`docker:17.06.2-ce-windowsservercore`](#docker17062-ce-windowsservercore)
-	[`docker:17.06.2-dind`](#docker17062-dind)
-	[`docker:17.06.2-git`](#docker17062-git)
-	[`docker:17.06.2-windowsservercore`](#docker17062-windowsservercore)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:17.06-windowsservercore`](#docker1706-windowsservercore)
-	[`docker:17.09`](#docker1709)
-	[`docker:17.09.0`](#docker17090)
-	[`docker:17.09.0-ce`](#docker17090-ce)
-	[`docker:17.09.0-ce-dind`](#docker17090-ce-dind)
-	[`docker:17.09.0-ce-git`](#docker17090-ce-git)
-	[`docker:17.09.0-ce-windowsservercore`](#docker17090-ce-windowsservercore)
-	[`docker:17.09.0-dind`](#docker17090-dind)
-	[`docker:17.09.0-git`](#docker17090-git)
-	[`docker:17.09.0-windowsservercore`](#docker17090-windowsservercore)
-	[`docker:17.09-dind`](#docker1709-dind)
-	[`docker:17.09-git`](#docker1709-git)
-	[`docker:17.09-windowsservercore`](#docker1709-windowsservercore)
-	[`docker:17.10`](#docker1710)
-	[`docker:17.10.0`](#docker17100)
-	[`docker:17.10.0-ce`](#docker17100-ce)
-	[`docker:17.10.0-ce-dind`](#docker17100-ce-dind)
-	[`docker:17.10.0-ce-git`](#docker17100-ce-git)
-	[`docker:17.10.0-ce-windowsservercore`](#docker17100-ce-windowsservercore)
-	[`docker:17.10.0-dind`](#docker17100-dind)
-	[`docker:17.10.0-git`](#docker17100-git)
-	[`docker:17.10.0-windowsservercore`](#docker17100-windowsservercore)
-	[`docker:17.10-dind`](#docker1710-dind)
-	[`docker:17.10-git`](#docker1710-git)
-	[`docker:17.10-windowsservercore`](#docker1710-windowsservercore)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:17-git`](#docker17-git)
-	[`docker:17-windowsservercore`](#docker17-windowsservercore)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:edge-windowsservercore`](#dockeredge-windowsservercore)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:stable-windowsservercore`](#dockerstable-windowsservercore)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)
-	[`docker:test-windowsservercore`](#dockertest-windowsservercore)
-	[`docker:windowsservercore`](#dockerwindowsservercore)

## `docker:17`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06`

```console
$ docker pull docker@sha256:950478b250c4105715090f7c50a587030372c0e2ef4c00611d93dbded704a0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06` - linux; amd64

```console
$ docker pull docker@sha256:125e2db7583f3ec47c2805ade4336c75d58a1b7aef9a9ada5f1148aef272c842
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32361211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486e4b38e20fe2bd0d46559efc53649f8a43f856debf5976edec7fe3a5474d5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06` - linux; s390x

```console
$ docker pull docker@sha256:06382cf1a95c01cfea6a2e152e4340b8a983fff69ba70a6eb45bcac9ec8f37c4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31864995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72c56891683b394857f85dbaabe562d21a910707a0aa49495e9b392b08899c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2`

```console
$ docker pull docker@sha256:950478b250c4105715090f7c50a587030372c0e2ef4c00611d93dbded704a0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06.2` - linux; amd64

```console
$ docker pull docker@sha256:125e2db7583f3ec47c2805ade4336c75d58a1b7aef9a9ada5f1148aef272c842
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32361211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486e4b38e20fe2bd0d46559efc53649f8a43f856debf5976edec7fe3a5474d5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06.2` - linux; s390x

```console
$ docker pull docker@sha256:06382cf1a95c01cfea6a2e152e4340b8a983fff69ba70a6eb45bcac9ec8f37c4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31864995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72c56891683b394857f85dbaabe562d21a910707a0aa49495e9b392b08899c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce`

```console
$ docker pull docker@sha256:950478b250c4105715090f7c50a587030372c0e2ef4c00611d93dbded704a0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06.2-ce` - linux; amd64

```console
$ docker pull docker@sha256:125e2db7583f3ec47c2805ade4336c75d58a1b7aef9a9ada5f1148aef272c842
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32361211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486e4b38e20fe2bd0d46559efc53649f8a43f856debf5976edec7fe3a5474d5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06.2-ce` - linux; s390x

```console
$ docker pull docker@sha256:06382cf1a95c01cfea6a2e152e4340b8a983fff69ba70a6eb45bcac9ec8f37c4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31864995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72c56891683b394857f85dbaabe562d21a910707a0aa49495e9b392b08899c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-dind`

```console
$ docker pull docker@sha256:ff6027b2b29213223b5ded9963b366326ccab40a500a24d244e0d8281a908642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06.2-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:e35645590df1c65f0b9133cbf5fc8feb4c934986d94b5c6b28a4cd3a82d8f9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34748021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac47afaeeb21e8e096c0639ae27f36ff2d4926d44b6d301b531b6f6f45bbfbb4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:50:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:50:30 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:50:30 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:50:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:50:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:50:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17007a5f7fb790f50af955f4ce34a029e38e42f1992f59fc1e4da4aac8383d29`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 2.2 MB (2208882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57e74b03ec594149b47c1a20aff0c23ab50d95b0044427f236cc3db71cf8cd`  
		Last Modified: Thu, 26 Oct 2017 00:00:59 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037407ee26c08dc3681387ddcd1d4f5da842ce464dc925d0003c2da9e30f7f`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 176.1 KB (176129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1299414074a797733033109f7e5af28b076a839d116cb5b3e325e3065525f1`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06.2-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:f967f75781af92972fb78df363d1e89c0bb86b108c12fd109d4204684dccde09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34389613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9ddceacea79f8f5c820c08c604e69bbadc5d2a871d0026c9694d80b57fbb4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:03:11 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:03:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:03:12 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:03:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:03:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:15 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:03:15 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:03:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968aa0c410826c3c80cfda78a91d077d6a9c848f0c2a261687134d5b086f9996`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 2.3 MB (2346680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c488712b9f68646e295b965a964200effd5a5ee7875922afbf81d0edaca4f24`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f570549e32d22f958144ff37ca6a0262bfccb26484f15023bc0ec5822bbc73`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd57b2f8c638af55085da5ac8c190c892eebfba4e99102b4d4becde89da338`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-git`

```console
$ docker pull docker@sha256:d35812aee0a5355c02bfad40bb46da26af8c811303869370e7f7d438a1d1e13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06.2-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:c402a1b966e4721cb4a66b613e827e336646af3d3a396feb0f0d44a0dbaeb5b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44141343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f69ce60b2747c75b3b98ff26bad3780c130ec2f570406ef1a63aa84384cb8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:50:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0c4b8836795437532d3bb5b70fb1c548b664e0064ec0ecca2892210f680ae`  
		Last Modified: Thu, 26 Oct 2017 00:01:31 GMT  
		Size: 11.8 MB (11780132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06.2-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:cddc6e50e3059c0f752733b066123df210b477a98e2fe76c0d36fcb1920fefbb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43604360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a440df3143d00988d34c251f5a82e2baa2c64cbe0cd91b2d7fae62499cf5402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:03:25 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4e298358a026162d4779141b106042032d12c081a9145ae701de19fc291321`  
		Last Modified: Thu, 26 Oct 2017 03:06:45 GMT  
		Size: 11.7 MB (11739365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-windowsservercore`

```console
$ docker pull docker@sha256:dd918f5aa559bd8c73cdd2e5baa5be510723dc4ae5eb464f1e07f544352eb55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.06.2-ce-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:75b08d197f96c7a09626ac396fe12c04be1579e7d2880a89887d78b8a3cb9d65
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366046652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036ca2d36908b360490614df78217cee2e6e833757b71ee2dfa88a2d74d32c32`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:44:07 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 23:44:39 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc1d56e68da1ace19c35a88bae39d32e4da43a6e3ed1f36f6976468ff0a63b8`  
		Last Modified: Thu, 19 Oct 2017 17:03:59 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77115a5714b740acf63e67bed45f0e69e56a3ef5b2b171cfb25555c68c389c6`  
		Last Modified: Thu, 19 Oct 2017 17:04:04 GMT  
		Size: 10.7 MB (10671855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-dind`

```console
$ docker pull docker@sha256:ff6027b2b29213223b5ded9963b366326ccab40a500a24d244e0d8281a908642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:e35645590df1c65f0b9133cbf5fc8feb4c934986d94b5c6b28a4cd3a82d8f9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34748021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac47afaeeb21e8e096c0639ae27f36ff2d4926d44b6d301b531b6f6f45bbfbb4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:50:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:50:30 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:50:30 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:50:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:50:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:50:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17007a5f7fb790f50af955f4ce34a029e38e42f1992f59fc1e4da4aac8383d29`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 2.2 MB (2208882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57e74b03ec594149b47c1a20aff0c23ab50d95b0044427f236cc3db71cf8cd`  
		Last Modified: Thu, 26 Oct 2017 00:00:59 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037407ee26c08dc3681387ddcd1d4f5da842ce464dc925d0003c2da9e30f7f`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 176.1 KB (176129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1299414074a797733033109f7e5af28b076a839d116cb5b3e325e3065525f1`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06.2-dind` - linux; s390x

```console
$ docker pull docker@sha256:f967f75781af92972fb78df363d1e89c0bb86b108c12fd109d4204684dccde09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34389613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9ddceacea79f8f5c820c08c604e69bbadc5d2a871d0026c9694d80b57fbb4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:03:11 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:03:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:03:12 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:03:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:03:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:15 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:03:15 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:03:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968aa0c410826c3c80cfda78a91d077d6a9c848f0c2a261687134d5b086f9996`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 2.3 MB (2346680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c488712b9f68646e295b965a964200effd5a5ee7875922afbf81d0edaca4f24`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f570549e32d22f958144ff37ca6a0262bfccb26484f15023bc0ec5822bbc73`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd57b2f8c638af55085da5ac8c190c892eebfba4e99102b4d4becde89da338`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-git`

```console
$ docker pull docker@sha256:d35812aee0a5355c02bfad40bb46da26af8c811303869370e7f7d438a1d1e13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06.2-git` - linux; amd64

```console
$ docker pull docker@sha256:c402a1b966e4721cb4a66b613e827e336646af3d3a396feb0f0d44a0dbaeb5b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44141343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f69ce60b2747c75b3b98ff26bad3780c130ec2f570406ef1a63aa84384cb8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:50:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0c4b8836795437532d3bb5b70fb1c548b664e0064ec0ecca2892210f680ae`  
		Last Modified: Thu, 26 Oct 2017 00:01:31 GMT  
		Size: 11.8 MB (11780132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06.2-git` - linux; s390x

```console
$ docker pull docker@sha256:cddc6e50e3059c0f752733b066123df210b477a98e2fe76c0d36fcb1920fefbb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43604360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a440df3143d00988d34c251f5a82e2baa2c64cbe0cd91b2d7fae62499cf5402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:03:25 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4e298358a026162d4779141b106042032d12c081a9145ae701de19fc291321`  
		Last Modified: Thu, 26 Oct 2017 03:06:45 GMT  
		Size: 11.7 MB (11739365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-windowsservercore`

```console
$ docker pull docker@sha256:dd918f5aa559bd8c73cdd2e5baa5be510723dc4ae5eb464f1e07f544352eb55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.06.2-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:75b08d197f96c7a09626ac396fe12c04be1579e7d2880a89887d78b8a3cb9d65
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366046652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036ca2d36908b360490614df78217cee2e6e833757b71ee2dfa88a2d74d32c32`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:44:07 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 23:44:39 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc1d56e68da1ace19c35a88bae39d32e4da43a6e3ed1f36f6976468ff0a63b8`  
		Last Modified: Thu, 19 Oct 2017 17:03:59 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77115a5714b740acf63e67bed45f0e69e56a3ef5b2b171cfb25555c68c389c6`  
		Last Modified: Thu, 19 Oct 2017 17:04:04 GMT  
		Size: 10.7 MB (10671855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-dind`

```console
$ docker pull docker@sha256:ff6027b2b29213223b5ded9963b366326ccab40a500a24d244e0d8281a908642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06-dind` - linux; amd64

```console
$ docker pull docker@sha256:e35645590df1c65f0b9133cbf5fc8feb4c934986d94b5c6b28a4cd3a82d8f9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34748021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac47afaeeb21e8e096c0639ae27f36ff2d4926d44b6d301b531b6f6f45bbfbb4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:50:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:50:30 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:50:30 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:50:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:50:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:50:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17007a5f7fb790f50af955f4ce34a029e38e42f1992f59fc1e4da4aac8383d29`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 2.2 MB (2208882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57e74b03ec594149b47c1a20aff0c23ab50d95b0044427f236cc3db71cf8cd`  
		Last Modified: Thu, 26 Oct 2017 00:00:59 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037407ee26c08dc3681387ddcd1d4f5da842ce464dc925d0003c2da9e30f7f`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 176.1 KB (176129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1299414074a797733033109f7e5af28b076a839d116cb5b3e325e3065525f1`  
		Last Modified: Thu, 26 Oct 2017 00:01:00 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06-dind` - linux; s390x

```console
$ docker pull docker@sha256:f967f75781af92972fb78df363d1e89c0bb86b108c12fd109d4204684dccde09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34389613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9ddceacea79f8f5c820c08c604e69bbadc5d2a871d0026c9694d80b57fbb4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:03:11 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:03:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:03:12 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:03:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:03:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:15 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:03:15 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:03:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968aa0c410826c3c80cfda78a91d077d6a9c848f0c2a261687134d5b086f9996`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 2.3 MB (2346680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c488712b9f68646e295b965a964200effd5a5ee7875922afbf81d0edaca4f24`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f570549e32d22f958144ff37ca6a0262bfccb26484f15023bc0ec5822bbc73`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd57b2f8c638af55085da5ac8c190c892eebfba4e99102b4d4becde89da338`  
		Last Modified: Thu, 26 Oct 2017 03:06:30 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

```console
$ docker pull docker@sha256:d35812aee0a5355c02bfad40bb46da26af8c811303869370e7f7d438a1d1e13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:17.06-git` - linux; amd64

```console
$ docker pull docker@sha256:c402a1b966e4721cb4a66b613e827e336646af3d3a396feb0f0d44a0dbaeb5b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44141343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f69ce60b2747c75b3b98ff26bad3780c130ec2f570406ef1a63aa84384cb8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:50:01 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 25 Oct 2017 23:50:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:50:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:50:10 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:50:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d43f8fb52c0f7f55f97c01517717465c791e08f9e78c06ccd17e9faf257ce`  
		Last Modified: Thu, 26 Oct 2017 00:00:29 GMT  
		Size: 30.0 MB (30017900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf9141e24cd6d0502a72ecc8d2e56808cc36449caf981f1c8fd9b7c3d0b7b80`  
		Last Modified: Thu, 26 Oct 2017 00:00:22 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0c4b8836795437532d3bb5b70fb1c548b664e0064ec0ecca2892210f680ae`  
		Last Modified: Thu, 26 Oct 2017 00:01:31 GMT  
		Size: 11.8 MB (11780132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.06-git` - linux; s390x

```console
$ docker pull docker@sha256:cddc6e50e3059c0f752733b066123df210b477a98e2fe76c0d36fcb1920fefbb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43604360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a440df3143d00988d34c251f5a82e2baa2c64cbe0cd91b2d7fae62499cf5402`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:57 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 26 Oct 2017 03:03:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:03:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:03:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:03:03 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:03:25 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de41a88479657e2982ccb8b54cb49f4edc8d4743c9fff489c5283ff878015e`  
		Last Modified: Thu, 26 Oct 2017 03:06:17 GMT  
		Size: 29.4 MB (29445951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed80a52c611514671e1e888b8070a7e360fe441e1af80f698965060421dad7`  
		Last Modified: Thu, 26 Oct 2017 03:06:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4e298358a026162d4779141b106042032d12c081a9145ae701de19fc291321`  
		Last Modified: Thu, 26 Oct 2017 03:06:45 GMT  
		Size: 11.7 MB (11739365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-windowsservercore`

```console
$ docker pull docker@sha256:dd918f5aa559bd8c73cdd2e5baa5be510723dc4ae5eb464f1e07f544352eb55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.06-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:75b08d197f96c7a09626ac396fe12c04be1579e7d2880a89887d78b8a3cb9d65
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366046652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036ca2d36908b360490614df78217cee2e6e833757b71ee2dfa88a2d74d32c32`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:44:07 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 23:44:39 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc1d56e68da1ace19c35a88bae39d32e4da43a6e3ed1f36f6976468ff0a63b8`  
		Last Modified: Thu, 19 Oct 2017 17:03:59 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77115a5714b740acf63e67bed45f0e69e56a3ef5b2b171cfb25555c68c389c6`  
		Last Modified: Thu, 19 Oct 2017 17:04:04 GMT  
		Size: 10.7 MB (10671855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09`

```console
$ docker pull docker@sha256:14ac86ab8294c0680d8f80aa5dbf723788efb405f912ba880139c5c2db273800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09` - linux; amd64

```console
$ docker pull docker@sha256:d0536ef54718fc748cf84cb508a42ebe34332f49bc5214f1eb8d833556840c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b06b5bf4d4209f04752aea4c370c89c9317c9ed959e210838a68553b77057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5138498a7a083af43e31ef93124b4d382d189668b19a95ed6ce1e822c8a10e28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30926767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb6cd7db8ddf75083077e1e23ffb1cfeeabedf85a3d696a49b5031c867449f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09` - linux; ppc64le

```console
$ docker pull docker@sha256:1b4f6ed31591f695597dcabb82be41638636ff9fb42519b00eea365a5559c960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30841612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a3f479f7f2aed636e5ce3eb67b0774f7aafe62e55c9243766604a4de6cdd20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09` - linux; s390x

```console
$ docker pull docker@sha256:fbf0d875636f01ebd83976eb32d254892286a39e02d9c989ac020b17f9b9f1de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebfb4952d33e8432233198dbbc651f99b2f054ddbab2b24fcc36b3308a31240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0`

```console
$ docker pull docker@sha256:14ac86ab8294c0680d8f80aa5dbf723788efb405f912ba880139c5c2db273800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09.0` - linux; amd64

```console
$ docker pull docker@sha256:d0536ef54718fc748cf84cb508a42ebe34332f49bc5214f1eb8d833556840c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b06b5bf4d4209f04752aea4c370c89c9317c9ed959e210838a68553b77057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5138498a7a083af43e31ef93124b4d382d189668b19a95ed6ce1e822c8a10e28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30926767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb6cd7db8ddf75083077e1e23ffb1cfeeabedf85a3d696a49b5031c867449f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0` - linux; ppc64le

```console
$ docker pull docker@sha256:1b4f6ed31591f695597dcabb82be41638636ff9fb42519b00eea365a5559c960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30841612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a3f479f7f2aed636e5ce3eb67b0774f7aafe62e55c9243766604a4de6cdd20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0` - linux; s390x

```console
$ docker pull docker@sha256:fbf0d875636f01ebd83976eb32d254892286a39e02d9c989ac020b17f9b9f1de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebfb4952d33e8432233198dbbc651f99b2f054ddbab2b24fcc36b3308a31240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce`

```console
$ docker pull docker@sha256:14ac86ab8294c0680d8f80aa5dbf723788efb405f912ba880139c5c2db273800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:d0536ef54718fc748cf84cb508a42ebe34332f49bc5214f1eb8d833556840c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b06b5bf4d4209f04752aea4c370c89c9317c9ed959e210838a68553b77057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5138498a7a083af43e31ef93124b4d382d189668b19a95ed6ce1e822c8a10e28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30926767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb6cd7db8ddf75083077e1e23ffb1cfeeabedf85a3d696a49b5031c867449f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:1b4f6ed31591f695597dcabb82be41638636ff9fb42519b00eea365a5559c960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30841612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a3f479f7f2aed636e5ce3eb67b0774f7aafe62e55c9243766604a4de6cdd20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce` - linux; s390x

```console
$ docker pull docker@sha256:fbf0d875636f01ebd83976eb32d254892286a39e02d9c989ac020b17f9b9f1de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebfb4952d33e8432233198dbbc651f99b2f054ddbab2b24fcc36b3308a31240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-dind`

```console
$ docker pull docker@sha256:8b97f8f36ad2459e3d034176c3a0b92246ee7154888a2190d2f006793c780f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:c1ad36e5664b089a8514856641222938020999940ffa8340f6b01393fba10bb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eacac85f9cc5cb6c7df06127267228f6be30b1f89e12c0da9848fa445469dff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:30 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:49:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:49:31 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:49:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:49:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:49:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:49:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a0089db64ae53692d00a5a4957a354e1e12315d0f7d459b95ca3f66ad1d4f1`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 2.2 MB (2208867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c25dd218641f9c2206f9ddeddfd947c18d000c418cff90a5091a74a19ed4cb`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c89cd5e55768e9f95cc104467c6ec26bcda5e57a4d8eeb321238e05cda9b736`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d156903258b4b1ee576f45b4b91c9966683e534bd25060a44c8d92c426806809`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:61c1a424a8f576826993ef02c6f2b6b1ea0aa99ef80a39ea5fac344ae2c8a58d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33174035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175c035a53a13557685645b27f790d0aec56f10fe8f774d766b775dc7d2304ba`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 06:03:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 06:03:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 06:03:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 06:03:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:03:11 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 06:03:11 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 06:03:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 06:03:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27495d255e4a7549853cbf8c9b2f6b1c1f1e723f5e89718ce3ffa988f97cd9`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 2.1 MB (2069338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812ada7556149d40151555d4de486b3bf38245c4304d59ad743e77676dfb7b93`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43e69b4a1be530bc907d43f344ec7a85fdd3e95a986e2a8f4829880552a472`  
		Last Modified: Fri, 13 Oct 2017 06:10:40 GMT  
		Size: 176.1 KB (176124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e1aaef5c65fa7312014540995f5e1578a0eb24971a5c933352011703571e59`  
		Last Modified: Fri, 13 Oct 2017 06:10:42 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b5238bab90bf2e179e4b5016b926bb8ab1fbad7d7122fd7aa51ea3c3d3e1de6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1c77defd38603c05147f60c745be3eb587139369cdc373413edde019254e4b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 10:39:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 10:39:18 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 10:39:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 10:39:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:39:31 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 10:39:33 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 10:39:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 10:39:39 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a06ba5476c19351ea9fcc82aba03de4c5d2f4d3b57b48cff909c95b1e0097d1`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 2.3 MB (2315568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2117c923fd8f511e864ac66695d0cf85e6232d14d0aace94b4d5db89a1a15`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f035131bb0cc7fd163cf57788f97f33fb2fc285b35d151d7ab33515730138d`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 176.2 KB (176181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79a7a0fa33565478576667b9581c073456dbcd6128552efb9c83c220b46e1b`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:9cd1e294cddd88d5a83dff2e56f10a1921ddec0817f071ddc8b7ebb1be754e63
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35053695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f116ee54ba9ec7c4cd7f4d56dcd1223d6e3fb3d23f045fc541fb5478d80044`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:02:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:02:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:39 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:39 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:39 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d17af9ad91daf1f92c7f5b90f34b1d9130cb05c876260cfba27c86d049f0f0`  
		Last Modified: Thu, 26 Oct 2017 03:05:34 GMT  
		Size: 2.3 MB (2346702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ecd7f10be6530a88c5936e4a72501da0057c6c9c662656d41c98605e160455`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d008a8c2e39f89405102ed5165b5626885007115331f49c4a4fbdb7620bf98`  
		Last Modified: Thu, 26 Oct 2017 03:05:37 GMT  
		Size: 176.1 KB (176136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec284214374fa71815fba703dd333fc20970b5971024b52d4d143e019950fd4`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-git`

```console
$ docker pull docker@sha256:8850bc1ed3f1b33bfc449743edad461a86c9f8bfb9ded4c9ab3da556b7323276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:713c2832cda9e47ad8a760f0ee20c1754b4e2dd0230da4baf7377a60b60cdff5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d701e118a97d1f30cf41b692f30da31e9ea33aff120c73e639990321fd43e72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4295bacbd9a7863852e385d495a30d53064b3e2f736aa5c60bd2d69266daa68`  
		Last Modified: Wed, 25 Oct 2017 23:59:36 GMT  
		Size: 11.8 MB (11780126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:22376bd62ca61b16e27fb75d392ebb358f00b11188de187dd017e6e45b84b40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41647972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b2c3efd8ae79ebb034f4ed3efb8dfb914cdaae08eff1a1589a726cbaca4783`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a465f70fd758308d85d4c1a1fb6694adbb343a4db4802a29c3ba63f11430e`  
		Last Modified: Fri, 13 Oct 2017 06:12:21 GMT  
		Size: 10.7 MB (10721205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:421ef1bd03b01247a1db6f0f5e50321f39ef54900b2d000d8910f47702b4ac03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42460249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fcc2acd00ed6839641d9018a9c829f868a661ce283a9bac067e93247e41faf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8899fe7f04a1c7c7dbf680373b15c5dec68942914875aa0a26969cdbf260169`  
		Last Modified: Fri, 13 Oct 2017 10:44:20 GMT  
		Size: 11.6 MB (11618637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:d747bb68de4f990ec9d1466754a8c47d113214f4d322ba216d2c1d9a0345fb3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44268434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbd023ff7201bd3c24646673cfe3fdb523163407047065f6f22b3718a1c3101`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:51 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f09939bbac3cb547d84493533dec1949f694f900579dd487e53c03f482e5990`  
		Last Modified: Thu, 26 Oct 2017 03:05:54 GMT  
		Size: 11.7 MB (11739381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-windowsservercore`

```console
$ docker pull docker@sha256:79144deed3e57164b756e096b932fc1d6ec613c665697008f2f4f475dbd16933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.09.0-ce-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:9f8645623558e577efc78e2036a7bde6df59bb046598b9e32e90b4a74e4bc828
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366252451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c0a6e468c41351fb89ec9dc217b6115df55fe2c50683c51faf60f6f73639b9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:38:56 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 23:42:11 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d291f9dd0fe37c9b6b36fde5f94737b3eae0c1eb4b22c6379aefff908204`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc26c4e7ea0e18976348621392bc3bc4a9309efc98e6a9730ce40d374ccc6d`  
		Last Modified: Thu, 19 Oct 2017 17:03:43 GMT  
		Size: 10.9 MB (10877661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-dind`

```console
$ docker pull docker@sha256:8b97f8f36ad2459e3d034176c3a0b92246ee7154888a2190d2f006793c780f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:c1ad36e5664b089a8514856641222938020999940ffa8340f6b01393fba10bb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eacac85f9cc5cb6c7df06127267228f6be30b1f89e12c0da9848fa445469dff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:30 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:49:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:49:31 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:49:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:49:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:49:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:49:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a0089db64ae53692d00a5a4957a354e1e12315d0f7d459b95ca3f66ad1d4f1`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 2.2 MB (2208867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c25dd218641f9c2206f9ddeddfd947c18d000c418cff90a5091a74a19ed4cb`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c89cd5e55768e9f95cc104467c6ec26bcda5e57a4d8eeb321238e05cda9b736`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d156903258b4b1ee576f45b4b91c9966683e534bd25060a44c8d92c426806809`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:61c1a424a8f576826993ef02c6f2b6b1ea0aa99ef80a39ea5fac344ae2c8a58d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33174035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175c035a53a13557685645b27f790d0aec56f10fe8f774d766b775dc7d2304ba`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 06:03:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 06:03:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 06:03:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 06:03:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:03:11 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 06:03:11 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 06:03:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 06:03:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27495d255e4a7549853cbf8c9b2f6b1c1f1e723f5e89718ce3ffa988f97cd9`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 2.1 MB (2069338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812ada7556149d40151555d4de486b3bf38245c4304d59ad743e77676dfb7b93`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43e69b4a1be530bc907d43f344ec7a85fdd3e95a986e2a8f4829880552a472`  
		Last Modified: Fri, 13 Oct 2017 06:10:40 GMT  
		Size: 176.1 KB (176124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e1aaef5c65fa7312014540995f5e1578a0eb24971a5c933352011703571e59`  
		Last Modified: Fri, 13 Oct 2017 06:10:42 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b5238bab90bf2e179e4b5016b926bb8ab1fbad7d7122fd7aa51ea3c3d3e1de6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1c77defd38603c05147f60c745be3eb587139369cdc373413edde019254e4b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 10:39:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 10:39:18 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 10:39:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 10:39:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:39:31 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 10:39:33 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 10:39:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 10:39:39 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a06ba5476c19351ea9fcc82aba03de4c5d2f4d3b57b48cff909c95b1e0097d1`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 2.3 MB (2315568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2117c923fd8f511e864ac66695d0cf85e6232d14d0aace94b4d5db89a1a15`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f035131bb0cc7fd163cf57788f97f33fb2fc285b35d151d7ab33515730138d`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 176.2 KB (176181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79a7a0fa33565478576667b9581c073456dbcd6128552efb9c83c220b46e1b`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-dind` - linux; s390x

```console
$ docker pull docker@sha256:9cd1e294cddd88d5a83dff2e56f10a1921ddec0817f071ddc8b7ebb1be754e63
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35053695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f116ee54ba9ec7c4cd7f4d56dcd1223d6e3fb3d23f045fc541fb5478d80044`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:02:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:02:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:39 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:39 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:39 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d17af9ad91daf1f92c7f5b90f34b1d9130cb05c876260cfba27c86d049f0f0`  
		Last Modified: Thu, 26 Oct 2017 03:05:34 GMT  
		Size: 2.3 MB (2346702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ecd7f10be6530a88c5936e4a72501da0057c6c9c662656d41c98605e160455`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d008a8c2e39f89405102ed5165b5626885007115331f49c4a4fbdb7620bf98`  
		Last Modified: Thu, 26 Oct 2017 03:05:37 GMT  
		Size: 176.1 KB (176136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec284214374fa71815fba703dd333fc20970b5971024b52d4d143e019950fd4`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-git`

```console
$ docker pull docker@sha256:8850bc1ed3f1b33bfc449743edad461a86c9f8bfb9ded4c9ab3da556b7323276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09.0-git` - linux; amd64

```console
$ docker pull docker@sha256:713c2832cda9e47ad8a760f0ee20c1754b4e2dd0230da4baf7377a60b60cdff5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d701e118a97d1f30cf41b692f30da31e9ea33aff120c73e639990321fd43e72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4295bacbd9a7863852e385d495a30d53064b3e2f736aa5c60bd2d69266daa68`  
		Last Modified: Wed, 25 Oct 2017 23:59:36 GMT  
		Size: 11.8 MB (11780126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:22376bd62ca61b16e27fb75d392ebb358f00b11188de187dd017e6e45b84b40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41647972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b2c3efd8ae79ebb034f4ed3efb8dfb914cdaae08eff1a1589a726cbaca4783`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a465f70fd758308d85d4c1a1fb6694adbb343a4db4802a29c3ba63f11430e`  
		Last Modified: Fri, 13 Oct 2017 06:12:21 GMT  
		Size: 10.7 MB (10721205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-git` - linux; ppc64le

```console
$ docker pull docker@sha256:421ef1bd03b01247a1db6f0f5e50321f39ef54900b2d000d8910f47702b4ac03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42460249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fcc2acd00ed6839641d9018a9c829f868a661ce283a9bac067e93247e41faf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8899fe7f04a1c7c7dbf680373b15c5dec68942914875aa0a26969cdbf260169`  
		Last Modified: Fri, 13 Oct 2017 10:44:20 GMT  
		Size: 11.6 MB (11618637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09.0-git` - linux; s390x

```console
$ docker pull docker@sha256:d747bb68de4f990ec9d1466754a8c47d113214f4d322ba216d2c1d9a0345fb3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44268434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbd023ff7201bd3c24646673cfe3fdb523163407047065f6f22b3718a1c3101`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:51 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f09939bbac3cb547d84493533dec1949f694f900579dd487e53c03f482e5990`  
		Last Modified: Thu, 26 Oct 2017 03:05:54 GMT  
		Size: 11.7 MB (11739381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-windowsservercore`

```console
$ docker pull docker@sha256:79144deed3e57164b756e096b932fc1d6ec613c665697008f2f4f475dbd16933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.09.0-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:9f8645623558e577efc78e2036a7bde6df59bb046598b9e32e90b4a74e4bc828
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366252451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c0a6e468c41351fb89ec9dc217b6115df55fe2c50683c51faf60f6f73639b9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:38:56 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 23:42:11 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d291f9dd0fe37c9b6b36fde5f94737b3eae0c1eb4b22c6379aefff908204`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc26c4e7ea0e18976348621392bc3bc4a9309efc98e6a9730ce40d374ccc6d`  
		Last Modified: Thu, 19 Oct 2017 17:03:43 GMT  
		Size: 10.9 MB (10877661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-dind`

```console
$ docker pull docker@sha256:8b97f8f36ad2459e3d034176c3a0b92246ee7154888a2190d2f006793c780f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:c1ad36e5664b089a8514856641222938020999940ffa8340f6b01393fba10bb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eacac85f9cc5cb6c7df06127267228f6be30b1f89e12c0da9848fa445469dff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:30 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:49:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:49:31 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:49:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:49:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:49:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:49:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a0089db64ae53692d00a5a4957a354e1e12315d0f7d459b95ca3f66ad1d4f1`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 2.2 MB (2208867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c25dd218641f9c2206f9ddeddfd947c18d000c418cff90a5091a74a19ed4cb`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c89cd5e55768e9f95cc104467c6ec26bcda5e57a4d8eeb321238e05cda9b736`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d156903258b4b1ee576f45b4b91c9966683e534bd25060a44c8d92c426806809`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:61c1a424a8f576826993ef02c6f2b6b1ea0aa99ef80a39ea5fac344ae2c8a58d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33174035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175c035a53a13557685645b27f790d0aec56f10fe8f774d766b775dc7d2304ba`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 06:03:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 06:03:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 06:03:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 06:03:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:03:11 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 06:03:11 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 06:03:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 06:03:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27495d255e4a7549853cbf8c9b2f6b1c1f1e723f5e89718ce3ffa988f97cd9`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 2.1 MB (2069338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812ada7556149d40151555d4de486b3bf38245c4304d59ad743e77676dfb7b93`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43e69b4a1be530bc907d43f344ec7a85fdd3e95a986e2a8f4829880552a472`  
		Last Modified: Fri, 13 Oct 2017 06:10:40 GMT  
		Size: 176.1 KB (176124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e1aaef5c65fa7312014540995f5e1578a0eb24971a5c933352011703571e59`  
		Last Modified: Fri, 13 Oct 2017 06:10:42 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b5238bab90bf2e179e4b5016b926bb8ab1fbad7d7122fd7aa51ea3c3d3e1de6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1c77defd38603c05147f60c745be3eb587139369cdc373413edde019254e4b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 10:39:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 10:39:18 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 10:39:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 10:39:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:39:31 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 10:39:33 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 10:39:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 10:39:39 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a06ba5476c19351ea9fcc82aba03de4c5d2f4d3b57b48cff909c95b1e0097d1`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 2.3 MB (2315568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2117c923fd8f511e864ac66695d0cf85e6232d14d0aace94b4d5db89a1a15`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f035131bb0cc7fd163cf57788f97f33fb2fc285b35d151d7ab33515730138d`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 176.2 KB (176181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79a7a0fa33565478576667b9581c073456dbcd6128552efb9c83c220b46e1b`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09-dind` - linux; s390x

```console
$ docker pull docker@sha256:9cd1e294cddd88d5a83dff2e56f10a1921ddec0817f071ddc8b7ebb1be754e63
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35053695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f116ee54ba9ec7c4cd7f4d56dcd1223d6e3fb3d23f045fc541fb5478d80044`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:02:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:02:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:39 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:39 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:39 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d17af9ad91daf1f92c7f5b90f34b1d9130cb05c876260cfba27c86d049f0f0`  
		Last Modified: Thu, 26 Oct 2017 03:05:34 GMT  
		Size: 2.3 MB (2346702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ecd7f10be6530a88c5936e4a72501da0057c6c9c662656d41c98605e160455`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d008a8c2e39f89405102ed5165b5626885007115331f49c4a4fbdb7620bf98`  
		Last Modified: Thu, 26 Oct 2017 03:05:37 GMT  
		Size: 176.1 KB (176136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec284214374fa71815fba703dd333fc20970b5971024b52d4d143e019950fd4`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-git`

```console
$ docker pull docker@sha256:8850bc1ed3f1b33bfc449743edad461a86c9f8bfb9ded4c9ab3da556b7323276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.09-git` - linux; amd64

```console
$ docker pull docker@sha256:713c2832cda9e47ad8a760f0ee20c1754b4e2dd0230da4baf7377a60b60cdff5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d701e118a97d1f30cf41b692f30da31e9ea33aff120c73e639990321fd43e72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4295bacbd9a7863852e385d495a30d53064b3e2f736aa5c60bd2d69266daa68`  
		Last Modified: Wed, 25 Oct 2017 23:59:36 GMT  
		Size: 11.8 MB (11780126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:22376bd62ca61b16e27fb75d392ebb358f00b11188de187dd017e6e45b84b40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41647972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b2c3efd8ae79ebb034f4ed3efb8dfb914cdaae08eff1a1589a726cbaca4783`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a465f70fd758308d85d4c1a1fb6694adbb343a4db4802a29c3ba63f11430e`  
		Last Modified: Fri, 13 Oct 2017 06:12:21 GMT  
		Size: 10.7 MB (10721205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09-git` - linux; ppc64le

```console
$ docker pull docker@sha256:421ef1bd03b01247a1db6f0f5e50321f39ef54900b2d000d8910f47702b4ac03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42460249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fcc2acd00ed6839641d9018a9c829f868a661ce283a9bac067e93247e41faf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8899fe7f04a1c7c7dbf680373b15c5dec68942914875aa0a26969cdbf260169`  
		Last Modified: Fri, 13 Oct 2017 10:44:20 GMT  
		Size: 11.6 MB (11618637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.09-git` - linux; s390x

```console
$ docker pull docker@sha256:d747bb68de4f990ec9d1466754a8c47d113214f4d322ba216d2c1d9a0345fb3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44268434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbd023ff7201bd3c24646673cfe3fdb523163407047065f6f22b3718a1c3101`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:51 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f09939bbac3cb547d84493533dec1949f694f900579dd487e53c03f482e5990`  
		Last Modified: Thu, 26 Oct 2017 03:05:54 GMT  
		Size: 11.7 MB (11739381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-windowsservercore`

```console
$ docker pull docker@sha256:79144deed3e57164b756e096b932fc1d6ec613c665697008f2f4f475dbd16933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.09-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:9f8645623558e577efc78e2036a7bde6df59bb046598b9e32e90b4a74e4bc828
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366252451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c0a6e468c41351fb89ec9dc217b6115df55fe2c50683c51faf60f6f73639b9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:38:56 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 23:42:11 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d291f9dd0fe37c9b6b36fde5f94737b3eae0c1eb4b22c6379aefff908204`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc26c4e7ea0e18976348621392bc3bc4a9309efc98e6a9730ce40d374ccc6d`  
		Last Modified: Thu, 19 Oct 2017 17:03:43 GMT  
		Size: 10.9 MB (10877661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10.0` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce-git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce-git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-ce-git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce-windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.10.0-ce-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10.0-git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10.0-git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.10.0-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10-git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17.10-git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10-git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17.10-git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10-windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17.10-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17-git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:17-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:edge-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:14ac86ab8294c0680d8f80aa5dbf723788efb405f912ba880139c5c2db273800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:d0536ef54718fc748cf84cb508a42ebe34332f49bc5214f1eb8d833556840c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94b06b5bf4d4209f04752aea4c370c89c9317c9ed959e210838a68553b77057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5138498a7a083af43e31ef93124b4d382d189668b19a95ed6ce1e822c8a10e28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30926767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb6cd7db8ddf75083077e1e23ffb1cfeeabedf85a3d696a49b5031c867449f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; ppc64le

```console
$ docker pull docker@sha256:1b4f6ed31591f695597dcabb82be41638636ff9fb42519b00eea365a5559c960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30841612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a3f479f7f2aed636e5ce3eb67b0774f7aafe62e55c9243766604a4de6cdd20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; s390x

```console
$ docker pull docker@sha256:fbf0d875636f01ebd83976eb32d254892286a39e02d9c989ac020b17f9b9f1de
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32529053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebfb4952d33e8432233198dbbc651f99b2f054ddbab2b24fcc36b3308a31240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:8b97f8f36ad2459e3d034176c3a0b92246ee7154888a2190d2f006793c780f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:c1ad36e5664b089a8514856641222938020999940ffa8340f6b01393fba10bb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eacac85f9cc5cb6c7df06127267228f6be30b1f89e12c0da9848fa445469dff`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:30 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:49:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:49:31 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:49:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:49:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:35 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:49:35 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:49:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:36 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a0089db64ae53692d00a5a4957a354e1e12315d0f7d459b95ca3f66ad1d4f1`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 2.2 MB (2208867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c25dd218641f9c2206f9ddeddfd947c18d000c418cff90a5091a74a19ed4cb`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c89cd5e55768e9f95cc104467c6ec26bcda5e57a4d8eeb321238e05cda9b736`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d156903258b4b1ee576f45b4b91c9966683e534bd25060a44c8d92c426806809`  
		Last Modified: Wed, 25 Oct 2017 23:58:47 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:61c1a424a8f576826993ef02c6f2b6b1ea0aa99ef80a39ea5fac344ae2c8a58d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33174035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175c035a53a13557685645b27f790d0aec56f10fe8f774d766b775dc7d2304ba`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 06:03:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 06:03:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 06:03:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 06:03:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:03:11 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 06:03:11 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 06:03:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 06:03:13 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27495d255e4a7549853cbf8c9b2f6b1c1f1e723f5e89718ce3ffa988f97cd9`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 2.1 MB (2069338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812ada7556149d40151555d4de486b3bf38245c4304d59ad743e77676dfb7b93`  
		Last Modified: Fri, 13 Oct 2017 06:10:41 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43e69b4a1be530bc907d43f344ec7a85fdd3e95a986e2a8f4829880552a472`  
		Last Modified: Fri, 13 Oct 2017 06:10:40 GMT  
		Size: 176.1 KB (176124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e1aaef5c65fa7312014540995f5e1578a0eb24971a5c933352011703571e59`  
		Last Modified: Fri, 13 Oct 2017 06:10:42 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:b5238bab90bf2e179e4b5016b926bb8ab1fbad7d7122fd7aa51ea3c3d3e1de6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1c77defd38603c05147f60c745be3eb587139369cdc373413edde019254e4b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Oct 2017 10:39:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Oct 2017 10:39:18 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Oct 2017 10:39:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 13 Oct 2017 10:39:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:39:31 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Oct 2017 10:39:33 GMT
EXPOSE 2375/tcp
# Fri, 13 Oct 2017 10:39:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Oct 2017 10:39:39 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a06ba5476c19351ea9fcc82aba03de4c5d2f4d3b57b48cff909c95b1e0097d1`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 2.3 MB (2315568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2117c923fd8f511e864ac66695d0cf85e6232d14d0aace94b4d5db89a1a15`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f035131bb0cc7fd163cf57788f97f33fb2fc285b35d151d7ab33515730138d`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 176.2 KB (176181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79a7a0fa33565478576667b9581c073456dbcd6128552efb9c83c220b46e1b`  
		Last Modified: Fri, 13 Oct 2017 10:43:34 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; s390x

```console
$ docker pull docker@sha256:9cd1e294cddd88d5a83dff2e56f10a1921ddec0817f071ddc8b7ebb1be754e63
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35053695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f116ee54ba9ec7c4cd7f4d56dcd1223d6e3fb3d23f045fc541fb5478d80044`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:02:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:02:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:39 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:39 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:39 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d17af9ad91daf1f92c7f5b90f34b1d9130cb05c876260cfba27c86d049f0f0`  
		Last Modified: Thu, 26 Oct 2017 03:05:34 GMT  
		Size: 2.3 MB (2346702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ecd7f10be6530a88c5936e4a72501da0057c6c9c662656d41c98605e160455`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d008a8c2e39f89405102ed5165b5626885007115331f49c4a4fbdb7620bf98`  
		Last Modified: Thu, 26 Oct 2017 03:05:37 GMT  
		Size: 176.1 KB (176136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec284214374fa71815fba703dd333fc20970b5971024b52d4d143e019950fd4`  
		Last Modified: Thu, 26 Oct 2017 03:05:33 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:8850bc1ed3f1b33bfc449743edad461a86c9f8bfb9ded4c9ab3da556b7323276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:713c2832cda9e47ad8a760f0ee20c1754b4e2dd0230da4baf7377a60b60cdff5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d701e118a97d1f30cf41b692f30da31e9ea33aff120c73e639990321fd43e72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 25 Oct 2017 23:49:12 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 25 Oct 2017 23:49:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:49:20 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:49:20 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d1600e44b7d43385143cb4c27690037f07f4ca3b22925e6b2f6b82929ad9e`  
		Last Modified: Wed, 25 Oct 2017 23:58:06 GMT  
		Size: 30.7 MB (30689101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89234c58890ce51ac8cad57b3b2f548335c89bc950fed1e91795138aa9418c47`  
		Last Modified: Wed, 25 Oct 2017 23:58:00 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4295bacbd9a7863852e385d495a30d53064b3e2f736aa5c60bd2d69266daa68`  
		Last Modified: Wed, 25 Oct 2017 23:59:36 GMT  
		Size: 11.8 MB (11780126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:22376bd62ca61b16e27fb75d392ebb358f00b11188de187dd017e6e45b84b40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41647972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b2c3efd8ae79ebb034f4ed3efb8dfb914cdaae08eff1a1589a726cbaca4783`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 06:02:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 06:02:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 06:02:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 06:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 06:02:45 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 06:03:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dd160c5fe82b9c7210a44228ad982f15a60b711f9d63075764728fd119b080`  
		Last Modified: Fri, 13 Oct 2017 06:09:04 GMT  
		Size: 28.7 MB (28654061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d2dffb1290ba6728c3ed2c3b0a6ac2987a0b24c0a851c2fe4692b90e631032`  
		Last Modified: Fri, 13 Oct 2017 06:08:52 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a465f70fd758308d85d4c1a1fb6694adbb343a4db4802a29c3ba63f11430e`  
		Last Modified: Fri, 13 Oct 2017 06:12:21 GMT  
		Size: 10.7 MB (10721205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; ppc64le

```console
$ docker pull docker@sha256:421ef1bd03b01247a1db6f0f5e50321f39ef54900b2d000d8910f47702b4ac03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42460249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fcc2acd00ed6839641d9018a9c829f868a661ce283a9bac067e93247e41faf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:38:31 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 13 Oct 2017 10:38:33 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Fri, 13 Oct 2017 10:38:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 13 Oct 2017 10:38:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 13 Oct 2017 10:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 10:38:52 GMT
CMD ["sh"]
# Fri, 13 Oct 2017 10:39:53 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3470876d250e436a231ccbab0f8b1e1631c5dd2ae108854dfeb7f0ab3cebdb89`  
		Last Modified: Fri, 13 Oct 2017 10:42:49 GMT  
		Size: 28.5 MB (28472305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5443085961ea748aa5fb1cdfb8b4cba72b5f604ea69bb7636a72b83fb23bf8d1`  
		Last Modified: Fri, 13 Oct 2017 10:42:41 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8899fe7f04a1c7c7dbf680373b15c5dec68942914875aa0a26969cdbf260169`  
		Last Modified: Fri, 13 Oct 2017 10:44:20 GMT  
		Size: 11.6 MB (11618637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; s390x

```console
$ docker pull docker@sha256:d747bb68de4f990ec9d1466754a8c47d113214f4d322ba216d2c1d9a0345fb3c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44268434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbd023ff7201bd3c24646673cfe3fdb523163407047065f6f22b3718a1c3101`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 26 Oct 2017 03:02:17 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 26 Oct 2017 03:02:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:02:22 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:23 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:51 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9303143e3c5a5f29141d472244c3c009078c14312477a8137bef78cfb92eae50`  
		Last Modified: Thu, 26 Oct 2017 03:05:16 GMT  
		Size: 30.1 MB (30110009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efda1f8408ce82a39a1ed30beca44cf78ae362bf8918f1553897c974247c028`  
		Last Modified: Thu, 26 Oct 2017 03:05:10 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f09939bbac3cb547d84493533dec1949f694f900579dd487e53c03f482e5990`  
		Last Modified: Thu, 26 Oct 2017 03:05:54 GMT  
		Size: 11.7 MB (11739381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-windowsservercore`

```console
$ docker pull docker@sha256:79144deed3e57164b756e096b932fc1d6ec613c665697008f2f4f475dbd16933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:stable-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:9f8645623558e577efc78e2036a7bde6df59bb046598b9e32e90b4a74e4bc828
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366252451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c0a6e468c41351fb89ec9dc217b6115df55fe2c50683c51faf60f6f73639b9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:38:53 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 23:38:56 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 23:42:11 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d979760223d7a9d542b1bcc20f121097b70ff21fcd2ce95e0f7a2d74c555cc`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631d291f9dd0fe37c9b6b36fde5f94737b3eae0c1eb4b22c6379aefff908204`  
		Last Modified: Thu, 19 Oct 2017 17:03:39 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc26c4e7ea0e18976348621392bc3bc4a9309efc98e6a9730ce40d374ccc6d`  
		Last Modified: Thu, 19 Oct 2017 17:03:43 GMT  
		Size: 10.9 MB (10877661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:3e26752b3f4760d5f89971e30009716ca2b7ab0c0614d8f05f82c1f18ad5cee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fb470f38ef8d59f8408d73455d54c591823e182b6b27c3175aa08aac3202a1dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590b8614f11f3f73ef1d170037bdc07643c419e60957a654d3b2e130359e9a00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; ppc64le

```console
$ docker pull docker@sha256:d802da6e19b0c698e3845b6b44e79d0244b19082f655e11679b620d6f91583e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30822136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d74c9a17e159903a73a11b94415ac097d48dae64130a946c4d4a7ec7874e68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:4a3c8bf6c93fb2560ef8b6a762ddd532e48dcde1a3efa984ba89582b67916c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:ef071dad31d1e43fc4488f22b5330818b876b4d8b4a1421398fabf199f1581ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d76de70e898910d9fcb67a1153d9446a5e576fa9c36c6b5d0a8ccd82cb92142`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:49:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdd25ddba156ca5ca9534ba22cbefeb4c199c09fb631b1386dcc02c204731f`  
		Last Modified: Wed, 25 Oct 2017 23:54:31 GMT  
		Size: 11.8 MB (11780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:da4a5cd70bc5a4d2aee4ad82b29bf7201d8e2e6dfc4332b2bfd54e3b4d4cb6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e5d573ab96200aaa2cf0d180cf1902e6706f58a79d0dbfc044517ca7650a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c06caadfa947afd7b266e758ce14245a578221952a2ab1be6c6776773abced`  
		Last Modified: Thu, 19 Oct 2017 06:06:26 GMT  
		Size: 10.7 MB (10721221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; ppc64le

```console
$ docker pull docker@sha256:8b1746e523fc9c721689b4230d4038d30029385fb19c97f1b535f94f1ba44dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42440775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498fba0f271a37e5be00e117451c4f954ed254439e94f00d4cf9e37ca8669c36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c254a90a248800f70cf1b35917ebc8bd18c2f00c29411f96fdefb292f9aca2aa`  
		Last Modified: Thu, 19 Oct 2017 10:40:29 GMT  
		Size: 11.6 MB (11618639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; s390x

```console
$ docker pull docker@sha256:0320530759fb8d08024c836c835f65973680f53687b46f399c92c46d29578e96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44358673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e038447cfca3967e3d2ceb3479f1a9273884e81170d234b2542f5f0ed7b1c96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:02:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9740a3db1d2523ada938de4dcb84e737f77f0569b4eb5768a26ab1cb4126f5c`  
		Last Modified: Thu, 26 Oct 2017 03:04:39 GMT  
		Size: 11.7 MB (11739356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:test-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:2fc036c3989b2be7699d86b87922339a9466423bd9389fc68517b6ab6ee3feab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `docker:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull docker@sha256:ea5b88c1ba52210c832c2cb42cc339082acedcf356649ea2bade6ecd14fc103e
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5366294159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d010ea91c4343252dc33caf67ee3dea6a037e13f7a7436bb528b30087f505a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 02:13:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Oct 2017 23:38:49 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Oct 2017 23:44:43 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 17:02:14 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 17:02:46 GMT
RUN $url = ('https://download.docker.com/win/static/{0}/x86_64/docker-{1}.zip' -f $env:DOCKER_CHANNEL, $env:DOCKER_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9604659e3e8da6b99c25a393035f4f0c389c2dfe4d4935d6d2c5c3f14bb34019`  
		Last Modified: Wed, 11 Oct 2017 02:29:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f106c3d75bcbb8f9ffcf0363c132d9c024a2ce32635e8413d56954a4e50b5713`  
		Last Modified: Thu, 19 Oct 2017 17:03:07 GMT  
		Size: 4.9 MB (4864001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439c00ac56eb0197761f632648a16f59d9e6b7cf0105560b95706b861052816c`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3379344609fd57c4dfd702f50eb5fd35fbfaa37f7af8184a57dc684cf8eb8e`  
		Last Modified: Thu, 19 Oct 2017 17:03:02 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15612669d366da73f871622974992ad634ab0283d91d0502dd588c49c0a482d2`  
		Last Modified: Thu, 19 Oct 2017 17:03:10 GMT  
		Size: 10.9 MB (10919359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
