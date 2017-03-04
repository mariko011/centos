<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

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
