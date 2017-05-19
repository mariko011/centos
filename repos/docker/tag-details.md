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
$ docker pull docker@sha256:c6e1f73492d2fccb4a7255a071f65b27c3b44eab1861fe8e6ec351b9670f1483
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21afa2a3e1cd8fd2fa5266cfd91606373e385f59c0d6a5bbdfb1a52fdfdd8206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:c6e1f73492d2fccb4a7255a071f65b27c3b44eab1861fe8e6ec351b9670f1483
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21afa2a3e1cd8fd2fa5266cfd91606373e385f59c0d6a5bbdfb1a52fdfdd8206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:c6e1f73492d2fccb4a7255a071f65b27c3b44eab1861fe8e6ec351b9670f1483
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21afa2a3e1cd8fd2fa5266cfd91606373e385f59c0d6a5bbdfb1a52fdfdd8206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:c6e1f73492d2fccb4a7255a071f65b27c3b44eab1861fe8e6ec351b9670f1483
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21afa2a3e1cd8fd2fa5266cfd91606373e385f59c0d6a5bbdfb1a52fdfdd8206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:c6e1f73492d2fccb4a7255a071f65b27c3b44eab1861fe8e6ec351b9670f1483
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21afa2a3e1cd8fd2fa5266cfd91606373e385f59c0d6a5bbdfb1a52fdfdd8206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:c6e1f73492d2fccb4a7255a071f65b27c3b44eab1861fe8e6ec351b9670f1483
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21afa2a3e1cd8fd2fa5266cfd91606373e385f59c0d6a5bbdfb1a52fdfdd8206`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:ada571c727c3289635cc06dccb5f62b136559ac0e24cbce4224ef5735ad80cd0
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad68c231063399279d56e4b28b22d7a437e7bfd3466783bae0132ddd40e4046`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:13 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:25:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:25:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:25:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:25:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:25:22 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:25:22 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:25:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:25:24 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d8443075d4bb2be10af3a3586bf83323568a7ca940a5b992c0bb4433a9b5`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 2.2 MB (2165464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08980111d20cdef0f40d3f5fbd7f67ac66e681ebf59de75a46d38d506822dc0c`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a50e3382cc4379e06b3bcc2f128d0a47404feaba70ffd02c33620a3390af8`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c205d8be23937ba6158e4117d6079a638d6ca06a027abe74496a4841420a282`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:ada571c727c3289635cc06dccb5f62b136559ac0e24cbce4224ef5735ad80cd0
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad68c231063399279d56e4b28b22d7a437e7bfd3466783bae0132ddd40e4046`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:13 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:25:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:25:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:25:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:25:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:25:22 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:25:22 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:25:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:25:24 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d8443075d4bb2be10af3a3586bf83323568a7ca940a5b992c0bb4433a9b5`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 2.2 MB (2165464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08980111d20cdef0f40d3f5fbd7f67ac66e681ebf59de75a46d38d506822dc0c`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a50e3382cc4379e06b3bcc2f128d0a47404feaba70ffd02c33620a3390af8`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c205d8be23937ba6158e4117d6079a638d6ca06a027abe74496a4841420a282`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:ada571c727c3289635cc06dccb5f62b136559ac0e24cbce4224ef5735ad80cd0
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad68c231063399279d56e4b28b22d7a437e7bfd3466783bae0132ddd40e4046`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:13 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:25:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:25:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:25:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:25:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:25:22 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:25:22 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:25:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:25:24 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d8443075d4bb2be10af3a3586bf83323568a7ca940a5b992c0bb4433a9b5`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 2.2 MB (2165464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08980111d20cdef0f40d3f5fbd7f67ac66e681ebf59de75a46d38d506822dc0c`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a50e3382cc4379e06b3bcc2f128d0a47404feaba70ffd02c33620a3390af8`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c205d8be23937ba6158e4117d6079a638d6ca06a027abe74496a4841420a282`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:ada571c727c3289635cc06dccb5f62b136559ac0e24cbce4224ef5735ad80cd0
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad68c231063399279d56e4b28b22d7a437e7bfd3466783bae0132ddd40e4046`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:13 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:25:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:25:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:25:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:25:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:25:22 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:25:22 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:25:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:25:24 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d8443075d4bb2be10af3a3586bf83323568a7ca940a5b992c0bb4433a9b5`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 2.2 MB (2165464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08980111d20cdef0f40d3f5fbd7f67ac66e681ebf59de75a46d38d506822dc0c`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a50e3382cc4379e06b3bcc2f128d0a47404feaba70ffd02c33620a3390af8`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c205d8be23937ba6158e4117d6079a638d6ca06a027abe74496a4841420a282`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:ada571c727c3289635cc06dccb5f62b136559ac0e24cbce4224ef5735ad80cd0
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad68c231063399279d56e4b28b22d7a437e7bfd3466783bae0132ddd40e4046`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:13 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:25:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:25:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:25:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:25:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:25:22 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:25:22 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:25:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:25:24 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d8443075d4bb2be10af3a3586bf83323568a7ca940a5b992c0bb4433a9b5`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 2.2 MB (2165464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08980111d20cdef0f40d3f5fbd7f67ac66e681ebf59de75a46d38d506822dc0c`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a50e3382cc4379e06b3bcc2f128d0a47404feaba70ffd02c33620a3390af8`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c205d8be23937ba6158e4117d6079a638d6ca06a027abe74496a4841420a282`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:ada571c727c3289635cc06dccb5f62b136559ac0e24cbce4224ef5735ad80cd0
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad68c231063399279d56e4b28b22d7a437e7bfd3466783bae0132ddd40e4046`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:13 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:25:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:25:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:25:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:25:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:25:22 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:25:22 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:25:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:25:24 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d8443075d4bb2be10af3a3586bf83323568a7ca940a5b992c0bb4433a9b5`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 2.2 MB (2165464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08980111d20cdef0f40d3f5fbd7f67ac66e681ebf59de75a46d38d506822dc0c`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a50e3382cc4379e06b3bcc2f128d0a47404feaba70ffd02c33620a3390af8`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c205d8be23937ba6158e4117d6079a638d6ca06a027abe74496a4841420a282`  
		Last Modified: Fri, 19 May 2017 19:30:17 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:cff7bb2491ef93d847db86f2cf8e2fef6bd00a9c9ee8a07747f2af939ef74cc6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce25da2236f03c3d2fdf48e4ffecba425ac937e906cbaf4e469614725989a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe8107f9f4b97908a42d562b84df3f21ca6662c18eec594800d062dbbdb305d`  
		Last Modified: Fri, 19 May 2017 19:32:39 GMT  
		Size: 11.0 MB (10990204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:cff7bb2491ef93d847db86f2cf8e2fef6bd00a9c9ee8a07747f2af939ef74cc6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce25da2236f03c3d2fdf48e4ffecba425ac937e906cbaf4e469614725989a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe8107f9f4b97908a42d562b84df3f21ca6662c18eec594800d062dbbdb305d`  
		Last Modified: Fri, 19 May 2017 19:32:39 GMT  
		Size: 11.0 MB (10990204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:cff7bb2491ef93d847db86f2cf8e2fef6bd00a9c9ee8a07747f2af939ef74cc6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce25da2236f03c3d2fdf48e4ffecba425ac937e906cbaf4e469614725989a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe8107f9f4b97908a42d562b84df3f21ca6662c18eec594800d062dbbdb305d`  
		Last Modified: Fri, 19 May 2017 19:32:39 GMT  
		Size: 11.0 MB (10990204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:cff7bb2491ef93d847db86f2cf8e2fef6bd00a9c9ee8a07747f2af939ef74cc6
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce25da2236f03c3d2fdf48e4ffecba425ac937e906cbaf4e469614725989a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe8107f9f4b97908a42d562b84df3f21ca6662c18eec594800d062dbbdb305d`  
		Last Modified: Fri, 19 May 2017 19:32:39 GMT  
		Size: 11.0 MB (10990204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:cff7bb2491ef93d847db86f2cf8e2fef6bd00a9c9ee8a07747f2af939ef74cc6
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce25da2236f03c3d2fdf48e4ffecba425ac937e906cbaf4e469614725989a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe8107f9f4b97908a42d562b84df3f21ca6662c18eec594800d062dbbdb305d`  
		Last Modified: Fri, 19 May 2017 19:32:39 GMT  
		Size: 11.0 MB (10990204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:cff7bb2491ef93d847db86f2cf8e2fef6bd00a9c9ee8a07747f2af939ef74cc6
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce25da2236f03c3d2fdf48e4ffecba425ac937e906cbaf4e469614725989a3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:24:37 GMT
ENV DOCKER_CHANNEL=edge
# Fri, 19 May 2017 19:24:38 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 19 May 2017 19:24:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:24:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:24:48 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:25:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7463945bc18207b456de53fa78695ebc4993bc3d24088b30c7553074080cc6eb`  
		Last Modified: Fri, 19 May 2017 19:27:56 GMT  
		Size: 28.8 MB (28753619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305297ec566a1e97bd753326b03d3e1795ff0067c7fd1355f9a9502817a015df`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe8107f9f4b97908a42d562b84df3f21ca6662c18eec594800d062dbbdb305d`  
		Last Modified: Fri, 19 May 2017 19:32:39 GMT  
		Size: 11.0 MB (10990204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:c1c2e90e426fe6de49b6758d2394dc6edf009f4922ca6d9de467d19230118bb0
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24052f8c30b114c87e06179a8baa873add5b9d0581d03a479d36224282dc4618`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:c1c2e90e426fe6de49b6758d2394dc6edf009f4922ca6d9de467d19230118bb0
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24052f8c30b114c87e06179a8baa873add5b9d0581d03a479d36224282dc4618`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:c1c2e90e426fe6de49b6758d2394dc6edf009f4922ca6d9de467d19230118bb0
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24052f8c30b114c87e06179a8baa873add5b9d0581d03a479d36224282dc4618`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:c1c2e90e426fe6de49b6758d2394dc6edf009f4922ca6d9de467d19230118bb0
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24052f8c30b114c87e06179a8baa873add5b9d0581d03a479d36224282dc4618`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:085434d0f960ea015939157bce811892d6b06f951e7ac4ef852081310d01dda6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa7195f05067d894ae61a8f9c8a3ff9e82899ab35084c38aa7ad451ca04ae7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:26:46 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:26:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:26:48 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:26:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:26:53 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:54 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:26:55 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:26:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:26:56 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb47b51793124946bdb8eea1fd4c8bc5a30f61253e9f72c48e59682e6315e81`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e01e87d8d282519d6c433e2c3d4ee155119366fb708c7416d1edc762d721699`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e36c10fad1dfa19e7076d90dc3df31286eed78c452876efb8b21f90993c188`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a549fd002f168d21cf1f54a9391f2dea38a7b4fd8801c88009a7e9a060cd831`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:085434d0f960ea015939157bce811892d6b06f951e7ac4ef852081310d01dda6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa7195f05067d894ae61a8f9c8a3ff9e82899ab35084c38aa7ad451ca04ae7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:26:46 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:26:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:26:48 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:26:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:26:53 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:54 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:26:55 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:26:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:26:56 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb47b51793124946bdb8eea1fd4c8bc5a30f61253e9f72c48e59682e6315e81`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e01e87d8d282519d6c433e2c3d4ee155119366fb708c7416d1edc762d721699`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e36c10fad1dfa19e7076d90dc3df31286eed78c452876efb8b21f90993c188`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a549fd002f168d21cf1f54a9391f2dea38a7b4fd8801c88009a7e9a060cd831`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:085434d0f960ea015939157bce811892d6b06f951e7ac4ef852081310d01dda6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa7195f05067d894ae61a8f9c8a3ff9e82899ab35084c38aa7ad451ca04ae7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:26:46 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:26:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:26:48 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:26:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:26:53 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:54 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:26:55 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:26:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:26:56 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb47b51793124946bdb8eea1fd4c8bc5a30f61253e9f72c48e59682e6315e81`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e01e87d8d282519d6c433e2c3d4ee155119366fb708c7416d1edc762d721699`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e36c10fad1dfa19e7076d90dc3df31286eed78c452876efb8b21f90993c188`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a549fd002f168d21cf1f54a9391f2dea38a7b4fd8801c88009a7e9a060cd831`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:085434d0f960ea015939157bce811892d6b06f951e7ac4ef852081310d01dda6
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa7195f05067d894ae61a8f9c8a3ff9e82899ab35084c38aa7ad451ca04ae7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:26:46 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 19 May 2017 19:26:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 19 May 2017 19:26:48 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 19 May 2017 19:26:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 19 May 2017 19:26:53 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:54 GMT
VOLUME [/var/lib/docker]
# Fri, 19 May 2017 19:26:55 GMT
EXPOSE 2375/tcp
# Fri, 19 May 2017 19:26:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 19 May 2017 19:26:56 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb47b51793124946bdb8eea1fd4c8bc5a30f61253e9f72c48e59682e6315e81`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e01e87d8d282519d6c433e2c3d4ee155119366fb708c7416d1edc762d721699`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e36c10fad1dfa19e7076d90dc3df31286eed78c452876efb8b21f90993c188`  
		Last Modified: Fri, 19 May 2017 19:36:40 GMT  
		Size: 175.7 KB (175671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a549fd002f168d21cf1f54a9391f2dea38a7b4fd8801c88009a7e9a060cd831`  
		Last Modified: Fri, 19 May 2017 19:36:39 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:c14b136a86c7114d19a0bffd972e2a7f25abe9aa4cdc321962910f1f34f060e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9479742f89fb6fed7c02512db1ca52f8e1c7e4528a59a675732d698dda9261ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:27:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e618247cd5df3712acb369aeea54a786ae26d1f83629cf5e140f9e17aee01`  
		Last Modified: Fri, 19 May 2017 19:38:15 GMT  
		Size: 11.0 MB (10990217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:c14b136a86c7114d19a0bffd972e2a7f25abe9aa4cdc321962910f1f34f060e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9479742f89fb6fed7c02512db1ca52f8e1c7e4528a59a675732d698dda9261ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:27:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e618247cd5df3712acb369aeea54a786ae26d1f83629cf5e140f9e17aee01`  
		Last Modified: Fri, 19 May 2017 19:38:15 GMT  
		Size: 11.0 MB (10990217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:c14b136a86c7114d19a0bffd972e2a7f25abe9aa4cdc321962910f1f34f060e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9479742f89fb6fed7c02512db1ca52f8e1c7e4528a59a675732d698dda9261ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:27:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e618247cd5df3712acb369aeea54a786ae26d1f83629cf5e140f9e17aee01`  
		Last Modified: Fri, 19 May 2017 19:38:15 GMT  
		Size: 11.0 MB (10990217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:c14b136a86c7114d19a0bffd972e2a7f25abe9aa4cdc321962910f1f34f060e2
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9479742f89fb6fed7c02512db1ca52f8e1c7e4528a59a675732d698dda9261ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:27:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e618247cd5df3712acb369aeea54a786ae26d1f83629cf5e140f9e17aee01`  
		Last Modified: Fri, 19 May 2017 19:38:15 GMT  
		Size: 11.0 MB (10990217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
