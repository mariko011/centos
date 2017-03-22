<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.04.0-ce-rc1`](#docker17040-ce-rc1)
-	[`docker:17.04.0-ce`](#docker17040-ce)
-	[`docker:17.04.0`](#docker17040)
-	[`docker:17.04-rc`](#docker1704-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:17.04.0-ce-rc1-dind`](#docker17040-ce-rc1-dind)
-	[`docker:17.04.0-ce-dind`](#docker17040-ce-dind)
-	[`docker:17.04.0-dind`](#docker17040-dind)
-	[`docker:17.04-rc-dind`](#docker1704-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:17.04.0-ce-rc1-git`](#docker17040-ce-rc1-git)
-	[`docker:17.04.0-ce-git`](#docker17040-ce-git)
-	[`docker:17.04.0-git`](#docker17040-git)
-	[`docker:17.04-rc-git`](#docker1704-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:17.03.0-ce`](#docker17030-ce)
-	[`docker:17.03.0`](#docker17030)
-	[`docker:17.03`](#docker1703)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:17.03.0-ce-dind`](#docker17030-ce-dind)
-	[`docker:17.03.0-dind`](#docker17030-dind)
-	[`docker:17.03-dind`](#docker1703-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:17.03.0-ce-git`](#docker17030-ce-git)
-	[`docker:17.03.0-git`](#docker17030-git)
-	[`docker:17.03-git`](#docker1703-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.13.1`](#docker1131)
-	[`docker:1.13`](#docker113)
-	[`docker:1.13.1-dind`](#docker1131-dind)
-	[`docker:1.13-dind`](#docker113-dind)
-	[`docker:1.13.1-git`](#docker1131-git)
-	[`docker:1.13-git`](#docker113-git)

## `docker:17.04.0-ce-rc1`

**does not exist** (yet?)

## `docker:17.04.0-ce`

**does not exist** (yet?)

## `docker:17.04.0`

**does not exist** (yet?)

## `docker:17.04-rc`

**does not exist** (yet?)

## `docker:rc`

```console
$ docker pull docker@sha256:52d492b3029b6ad6de6d6962a1cbae6175f4698c40610196bac83157e1f8931b
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31808269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e117bb1e8f28341c44e51f3f88d7cc21ccfcc8c5458b33d67db5f8edeb5b06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-rc1-dind`

**does not exist** (yet?)

## `docker:17.04.0-ce-dind`

**does not exist** (yet?)

## `docker:17.04.0-dind`

**does not exist** (yet?)

## `docker:17.04-rc-dind`

**does not exist** (yet?)

## `docker:rc-dind`

```console
$ docker pull docker@sha256:a500a6076863c56a0f4f1f6e7e4f64ad6a613409cb877f4c155a0ae3c43d0203
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33915648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6963b4e56d00860fa25accfe7116e02dd140f2b4c9948e1f0b8801ce622d9636`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 23 Feb 2017 19:22:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Feb 2017 19:22:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Feb 2017 19:22:43 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 23 Feb 2017 19:22:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:44 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Feb 2017 19:22:45 GMT
EXPOSE 2375/tcp
# Thu, 23 Feb 2017 19:22:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0920f0ec5088315ab411ef27f25d1d0ea6cc0801f41855311b8e328150763c`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 2.1 MB (2103778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8085d877cb46b4d46735eaa061253ae5984a9c576406ccdd9a97180b91ffd9ea`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476755cd35e135fcd5bb926d98a2922ebd4b7ee5465a45f00ec90df4219ac6b`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0139e2f89d07983de0666f309fa4bd4451d88773cf5c97c79ae63f0a8814b1`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-rc1-git`

**does not exist** (yet?)

## `docker:17.04.0-ce-git`

**does not exist** (yet?)

## `docker:17.04.0-git`

**does not exist** (yet?)

## `docker:17.04-rc-git`

**does not exist** (yet?)

## `docker:rc-git`

```console
$ docker pull docker@sha256:0bef0d024c20e6c67e02dc3f7f50cc3a335baebd01a8b84a5d23e8ace2b1fade
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42180791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5feabce1c53e5434d0a8f6a20b2a33f87fbe766084fee5c9ba228b6cad8fa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c1b8749ac70a875b9fee6afbc48c3cce1e3d0a8cc87bdf8d333882cd0baba9`  
		Last Modified: Thu, 23 Feb 2017 19:25:12 GMT  
		Size: 10.4 MB (10372522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce`

```console
$ docker pull docker@sha256:b8c2daf07bd9faac5e184c59bee6fb2988e595f21d86416278b9e047203a7816
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31814655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72ea75d81beb091e8ef3b1c95fc353b9e02ff23fe687b5a40c00f94c9e259a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0`

```console
$ docker pull docker@sha256:b8c2daf07bd9faac5e184c59bee6fb2988e595f21d86416278b9e047203a7816
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31814655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72ea75d81beb091e8ef3b1c95fc353b9e02ff23fe687b5a40c00f94c9e259a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:b8c2daf07bd9faac5e184c59bee6fb2988e595f21d86416278b9e047203a7816
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31814655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72ea75d81beb091e8ef3b1c95fc353b9e02ff23fe687b5a40c00f94c9e259a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:b8c2daf07bd9faac5e184c59bee6fb2988e595f21d86416278b9e047203a7816
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31814655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72ea75d81beb091e8ef3b1c95fc353b9e02ff23fe687b5a40c00f94c9e259a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:b8c2daf07bd9faac5e184c59bee6fb2988e595f21d86416278b9e047203a7816
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31814655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72ea75d81beb091e8ef3b1c95fc353b9e02ff23fe687b5a40c00f94c9e259a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce-dind`

```console
$ docker pull docker@sha256:b9a649480ac1002af3150d708a5a989d56a1e6b1321fff7b10e42b25c7def60b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33922060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0da1be773f9c6ff3573257870be1db867b1008c4c1c773a3091fa7c49726db`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:35 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:36 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:36 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcefd2b80d4c0c03feadc5ac2f432587cbd13e09790399753accedc87dc654`  
		Last Modified: Sat, 04 Mar 2017 04:43:07 GMT  
		Size: 2.1 MB (2103800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969bfae120ca4b7299eb15f3d8437b76a74bf008eeccefaad40c33c74feab274`  
		Last Modified: Sat, 04 Mar 2017 04:43:04 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33fc9cdbc007dd8a74d52ec36fb15435821454275adea1144db4b1febe2622f`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c7cb5693c8da4bbd92a35e5ac7bcf5ffda26b81745a5b2fc9a7a6a48d35ef8`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-dind`

```console
$ docker pull docker@sha256:b9a649480ac1002af3150d708a5a989d56a1e6b1321fff7b10e42b25c7def60b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33922060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0da1be773f9c6ff3573257870be1db867b1008c4c1c773a3091fa7c49726db`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:35 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:36 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:36 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcefd2b80d4c0c03feadc5ac2f432587cbd13e09790399753accedc87dc654`  
		Last Modified: Sat, 04 Mar 2017 04:43:07 GMT  
		Size: 2.1 MB (2103800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969bfae120ca4b7299eb15f3d8437b76a74bf008eeccefaad40c33c74feab274`  
		Last Modified: Sat, 04 Mar 2017 04:43:04 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33fc9cdbc007dd8a74d52ec36fb15435821454275adea1144db4b1febe2622f`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c7cb5693c8da4bbd92a35e5ac7bcf5ffda26b81745a5b2fc9a7a6a48d35ef8`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:b9a649480ac1002af3150d708a5a989d56a1e6b1321fff7b10e42b25c7def60b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33922060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0da1be773f9c6ff3573257870be1db867b1008c4c1c773a3091fa7c49726db`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:35 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:36 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:36 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcefd2b80d4c0c03feadc5ac2f432587cbd13e09790399753accedc87dc654`  
		Last Modified: Sat, 04 Mar 2017 04:43:07 GMT  
		Size: 2.1 MB (2103800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969bfae120ca4b7299eb15f3d8437b76a74bf008eeccefaad40c33c74feab274`  
		Last Modified: Sat, 04 Mar 2017 04:43:04 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33fc9cdbc007dd8a74d52ec36fb15435821454275adea1144db4b1febe2622f`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c7cb5693c8da4bbd92a35e5ac7bcf5ffda26b81745a5b2fc9a7a6a48d35ef8`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:b9a649480ac1002af3150d708a5a989d56a1e6b1321fff7b10e42b25c7def60b
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33922060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0da1be773f9c6ff3573257870be1db867b1008c4c1c773a3091fa7c49726db`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:35 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:36 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:36 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcefd2b80d4c0c03feadc5ac2f432587cbd13e09790399753accedc87dc654`  
		Last Modified: Sat, 04 Mar 2017 04:43:07 GMT  
		Size: 2.1 MB (2103800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969bfae120ca4b7299eb15f3d8437b76a74bf008eeccefaad40c33c74feab274`  
		Last Modified: Sat, 04 Mar 2017 04:43:04 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33fc9cdbc007dd8a74d52ec36fb15435821454275adea1144db4b1febe2622f`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c7cb5693c8da4bbd92a35e5ac7bcf5ffda26b81745a5b2fc9a7a6a48d35ef8`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:b9a649480ac1002af3150d708a5a989d56a1e6b1321fff7b10e42b25c7def60b
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33922060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0da1be773f9c6ff3573257870be1db867b1008c4c1c773a3091fa7c49726db`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:35 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:35 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:36 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:36 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcefd2b80d4c0c03feadc5ac2f432587cbd13e09790399753accedc87dc654`  
		Last Modified: Sat, 04 Mar 2017 04:43:07 GMT  
		Size: 2.1 MB (2103800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969bfae120ca4b7299eb15f3d8437b76a74bf008eeccefaad40c33c74feab274`  
		Last Modified: Sat, 04 Mar 2017 04:43:04 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33fc9cdbc007dd8a74d52ec36fb15435821454275adea1144db4b1febe2622f`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c7cb5693c8da4bbd92a35e5ac7bcf5ffda26b81745a5b2fc9a7a6a48d35ef8`  
		Last Modified: Sat, 04 Mar 2017 04:43:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce-git`

```console
$ docker pull docker@sha256:2cede9f44cc028dba58ede9d1df5b38aec50cf853ae7e1fe8e1eeebec0bc8eb5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42187202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162d19edb69ea63596bb67cdfb550b6fef71233b5a97c3c55d23c54a560267c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:38 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5511b1a5d784b955dd6069801caeda837da2cb8e61e11108caf8490a13dfd`  
		Last Modified: Sat, 04 Mar 2017 04:44:42 GMT  
		Size: 10.4 MB (10372547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-git`

```console
$ docker pull docker@sha256:2cede9f44cc028dba58ede9d1df5b38aec50cf853ae7e1fe8e1eeebec0bc8eb5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42187202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162d19edb69ea63596bb67cdfb550b6fef71233b5a97c3c55d23c54a560267c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:38 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5511b1a5d784b955dd6069801caeda837da2cb8e61e11108caf8490a13dfd`  
		Last Modified: Sat, 04 Mar 2017 04:44:42 GMT  
		Size: 10.4 MB (10372547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:2cede9f44cc028dba58ede9d1df5b38aec50cf853ae7e1fe8e1eeebec0bc8eb5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42187202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162d19edb69ea63596bb67cdfb550b6fef71233b5a97c3c55d23c54a560267c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:38 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5511b1a5d784b955dd6069801caeda837da2cb8e61e11108caf8490a13dfd`  
		Last Modified: Sat, 04 Mar 2017 04:44:42 GMT  
		Size: 10.4 MB (10372547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:2cede9f44cc028dba58ede9d1df5b38aec50cf853ae7e1fe8e1eeebec0bc8eb5
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42187202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162d19edb69ea63596bb67cdfb550b6fef71233b5a97c3c55d23c54a560267c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:38 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5511b1a5d784b955dd6069801caeda837da2cb8e61e11108caf8490a13dfd`  
		Last Modified: Sat, 04 Mar 2017 04:44:42 GMT  
		Size: 10.4 MB (10372547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:2cede9f44cc028dba58ede9d1df5b38aec50cf853ae7e1fe8e1eeebec0bc8eb5
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42187202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162d19edb69ea63596bb67cdfb550b6fef71233b5a97c3c55d23c54a560267c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:38 GMT
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5511b1a5d784b955dd6069801caeda837da2cb8e61e11108caf8490a13dfd`  
		Last Modified: Sat, 04 Mar 2017 04:44:42 GMT  
		Size: 10.4 MB (10372547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1`

```console
$ docker pull docker@sha256:03ebd4ec45fb424085628ca9070307a3649e93559f685ecb98c3906c11eba211
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31804542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec0bbbc650d5a7614227c80231b99ea90bce075f327fcbf1fd40e33aef15421`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
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
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13`

```console
$ docker pull docker@sha256:03ebd4ec45fb424085628ca9070307a3649e93559f685ecb98c3906c11eba211
```

-	Platforms:
	-	linux; amd64

### `docker:1.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31804542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec0bbbc650d5a7614227c80231b99ea90bce075f327fcbf1fd40e33aef15421`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
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
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1-dind`

```console
$ docker pull docker@sha256:490c1dec6a22cfccb159095c492fcf5869fe6135bc9e2f939570fced440cfb2a
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33911936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0534a070b830fbbcd8e870b53e4e7de0aa3ae4b7627ae1913604a9881a1f5fcc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:21 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:22 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:22 GMT
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
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38f8a2f1e01f4a50f4f3d0cc50a4f420ab0e6fd607ece616ab2c60e871487c`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 2.1 MB (2103789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c34a10913cf6c52c4119d20eae9aaf8f25ed2dd84bf4042937604dd7977ca1`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f6b205352ef977c6a24ae89465cf496aae0821ff1fdd8f428b0cbde8952462`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95889d64154ff379f058cd62b692cef451745fc7f6f84d60bfb42a73b90a787d`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-dind`

```console
$ docker pull docker@sha256:490c1dec6a22cfccb159095c492fcf5869fe6135bc9e2f939570fced440cfb2a
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33911936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0534a070b830fbbcd8e870b53e4e7de0aa3ae4b7627ae1913604a9881a1f5fcc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:21 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:22 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:22 GMT
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
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38f8a2f1e01f4a50f4f3d0cc50a4f420ab0e6fd607ece616ab2c60e871487c`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 2.1 MB (2103789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c34a10913cf6c52c4119d20eae9aaf8f25ed2dd84bf4042937604dd7977ca1`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f6b205352ef977c6a24ae89465cf496aae0821ff1fdd8f428b0cbde8952462`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95889d64154ff379f058cd62b692cef451745fc7f6f84d60bfb42a73b90a787d`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1-git`

```console
$ docker pull docker@sha256:10c6902b94a4b1e817086a83270d51cb6cc83cf8567979ac8da2cf66a94564ca
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42177059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d8c6c6918fe1c2cd0a46b5dc816b750b54b1f9d2a3549c353ec5f78bb9f53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:24 GMT
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
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fabc8e1aadf35feab85756e81f7247274421529c584500393986f8bc3f882e`  
		Last Modified: Sat, 04 Mar 2017 04:40:42 GMT  
		Size: 10.4 MB (10372517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-git`

```console
$ docker pull docker@sha256:10c6902b94a4b1e817086a83270d51cb6cc83cf8567979ac8da2cf66a94564ca
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42177059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d8c6c6918fe1c2cd0a46b5dc816b750b54b1f9d2a3549c353ec5f78bb9f53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:24 GMT
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
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fabc8e1aadf35feab85756e81f7247274421529c584500393986f8bc3f882e`  
		Last Modified: Sat, 04 Mar 2017 04:40:42 GMT  
		Size: 10.4 MB (10372517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
