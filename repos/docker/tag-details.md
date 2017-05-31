<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.06.0-ce-rc1`](#docker17060-ce-rc1)
-	[`docker:17.06.0-ce`](#docker17060-ce)
-	[`docker:17.06.0`](#docker17060)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.06.0-ce-rc1-dind`](#docker17060-ce-rc1-dind)
-	[`docker:17.06.0-ce-dind`](#docker17060-ce-dind)
-	[`docker:17.06.0-dind`](#docker17060-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.06.0-ce-rc1-git`](#docker17060-ce-rc1-git)
-	[`docker:17.06.0-ce-git`](#docker17060-ce-git)
-	[`docker:17.06.0-git`](#docker17060-git)
-	[`docker:17.06-rc-git`](#docker1706-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:test-git`](#dockertest-git)
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
-	[`docker:17.03.2-ce-rc1`](#docker17032-ce-rc1)
-	[`docker:17.03.2-ce`](#docker17032-ce)
-	[`docker:17.03.2`](#docker17032)
-	[`docker:17.03-rc`](#docker1703-rc)
-	[`docker:17.03.2-ce-rc1-dind`](#docker17032-ce-rc1-dind)
-	[`docker:17.03.2-ce-dind`](#docker17032-ce-dind)
-	[`docker:17.03.2-dind`](#docker17032-dind)
-	[`docker:17.03-rc-dind`](#docker1703-rc-dind)
-	[`docker:17.03.2-ce-rc1-git`](#docker17032-ce-rc1-git)
-	[`docker:17.03.2-ce-git`](#docker17032-ce-git)
-	[`docker:17.03.2-git`](#docker17032-git)
-	[`docker:17.03-rc-git`](#docker1703-rc-git)
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

## `docker:17.06.0-ce-rc1`

```console
$ docker pull docker@sha256:ecf87ada2a9e5348b8f1d02f96281aa583ea44a50a6f3e6b5c172507738eb4db
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32318788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cc393a2493be8365d74ec5a54d8eb1e36e194a67cecdd6921152cd887e547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce`

```console
$ docker pull docker@sha256:ecf87ada2a9e5348b8f1d02f96281aa583ea44a50a6f3e6b5c172507738eb4db
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32318788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cc393a2493be8365d74ec5a54d8eb1e36e194a67cecdd6921152cd887e547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0`

```console
$ docker pull docker@sha256:ecf87ada2a9e5348b8f1d02f96281aa583ea44a50a6f3e6b5c172507738eb4db
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32318788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cc393a2493be8365d74ec5a54d8eb1e36e194a67cecdd6921152cd887e547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:ecf87ada2a9e5348b8f1d02f96281aa583ea44a50a6f3e6b5c172507738eb4db
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32318788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cc393a2493be8365d74ec5a54d8eb1e36e194a67cecdd6921152cd887e547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:ecf87ada2a9e5348b8f1d02f96281aa583ea44a50a6f3e6b5c172507738eb4db
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32318788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cc393a2493be8365d74ec5a54d8eb1e36e194a67cecdd6921152cd887e547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:ecf87ada2a9e5348b8f1d02f96281aa583ea44a50a6f3e6b5c172507738eb4db
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32318788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819cc393a2493be8365d74ec5a54d8eb1e36e194a67cecdd6921152cd887e547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:9e82bbf4053ebd0e4157d7ef41cd03f22d77d0febc5c99164c30420438e8ca61
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3db18d7e67232db374c859c3357f4ef8c6c97721661fc221fb4d8e2389893cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:09:39 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 31 May 2017 20:09:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 31 May 2017 20:10:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 31 May 2017 20:10:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 31 May 2017 20:10:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 31 May 2017 20:10:08 GMT
VOLUME [/var/lib/docker]
# Wed, 31 May 2017 20:10:10 GMT
EXPOSE 2375/tcp
# Wed, 31 May 2017 20:10:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 31 May 2017 20:10:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b034f56bd89a27392b5616c4486c4b2f6c4fe0f47885b95b29a16c75441ac8f`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c766dfb0ad5ea046adc00e1ce269c82c0874cd813b1446ef566257fc01b16124`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb7fea7d770e4118bf71cd42cabc5d3a046c85c9dd2703b2f16a684e3e0054d`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98089e303f413d6fa88edd3f2e48b256260e1cbd2a4aafa5a3d0d37e37b870e3`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-dind`

```console
$ docker pull docker@sha256:9e82bbf4053ebd0e4157d7ef41cd03f22d77d0febc5c99164c30420438e8ca61
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3db18d7e67232db374c859c3357f4ef8c6c97721661fc221fb4d8e2389893cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:09:39 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 31 May 2017 20:09:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 31 May 2017 20:10:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 31 May 2017 20:10:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 31 May 2017 20:10:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 31 May 2017 20:10:08 GMT
VOLUME [/var/lib/docker]
# Wed, 31 May 2017 20:10:10 GMT
EXPOSE 2375/tcp
# Wed, 31 May 2017 20:10:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 31 May 2017 20:10:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b034f56bd89a27392b5616c4486c4b2f6c4fe0f47885b95b29a16c75441ac8f`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c766dfb0ad5ea046adc00e1ce269c82c0874cd813b1446ef566257fc01b16124`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb7fea7d770e4118bf71cd42cabc5d3a046c85c9dd2703b2f16a684e3e0054d`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98089e303f413d6fa88edd3f2e48b256260e1cbd2a4aafa5a3d0d37e37b870e3`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-dind`

```console
$ docker pull docker@sha256:9e82bbf4053ebd0e4157d7ef41cd03f22d77d0febc5c99164c30420438e8ca61
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3db18d7e67232db374c859c3357f4ef8c6c97721661fc221fb4d8e2389893cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:09:39 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 31 May 2017 20:09:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 31 May 2017 20:10:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 31 May 2017 20:10:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 31 May 2017 20:10:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 31 May 2017 20:10:08 GMT
VOLUME [/var/lib/docker]
# Wed, 31 May 2017 20:10:10 GMT
EXPOSE 2375/tcp
# Wed, 31 May 2017 20:10:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 31 May 2017 20:10:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b034f56bd89a27392b5616c4486c4b2f6c4fe0f47885b95b29a16c75441ac8f`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c766dfb0ad5ea046adc00e1ce269c82c0874cd813b1446ef566257fc01b16124`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb7fea7d770e4118bf71cd42cabc5d3a046c85c9dd2703b2f16a684e3e0054d`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98089e303f413d6fa88edd3f2e48b256260e1cbd2a4aafa5a3d0d37e37b870e3`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:9e82bbf4053ebd0e4157d7ef41cd03f22d77d0febc5c99164c30420438e8ca61
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3db18d7e67232db374c859c3357f4ef8c6c97721661fc221fb4d8e2389893cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:09:39 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 31 May 2017 20:09:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 31 May 2017 20:10:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 31 May 2017 20:10:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 31 May 2017 20:10:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 31 May 2017 20:10:08 GMT
VOLUME [/var/lib/docker]
# Wed, 31 May 2017 20:10:10 GMT
EXPOSE 2375/tcp
# Wed, 31 May 2017 20:10:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 31 May 2017 20:10:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b034f56bd89a27392b5616c4486c4b2f6c4fe0f47885b95b29a16c75441ac8f`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c766dfb0ad5ea046adc00e1ce269c82c0874cd813b1446ef566257fc01b16124`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb7fea7d770e4118bf71cd42cabc5d3a046c85c9dd2703b2f16a684e3e0054d`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98089e303f413d6fa88edd3f2e48b256260e1cbd2a4aafa5a3d0d37e37b870e3`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:9e82bbf4053ebd0e4157d7ef41cd03f22d77d0febc5c99164c30420438e8ca61
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3db18d7e67232db374c859c3357f4ef8c6c97721661fc221fb4d8e2389893cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:09:39 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 31 May 2017 20:09:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 31 May 2017 20:10:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 31 May 2017 20:10:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 31 May 2017 20:10:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 31 May 2017 20:10:08 GMT
VOLUME [/var/lib/docker]
# Wed, 31 May 2017 20:10:10 GMT
EXPOSE 2375/tcp
# Wed, 31 May 2017 20:10:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 31 May 2017 20:10:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b034f56bd89a27392b5616c4486c4b2f6c4fe0f47885b95b29a16c75441ac8f`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c766dfb0ad5ea046adc00e1ce269c82c0874cd813b1446ef566257fc01b16124`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb7fea7d770e4118bf71cd42cabc5d3a046c85c9dd2703b2f16a684e3e0054d`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98089e303f413d6fa88edd3f2e48b256260e1cbd2a4aafa5a3d0d37e37b870e3`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:9e82bbf4053ebd0e4157d7ef41cd03f22d77d0febc5c99164c30420438e8ca61
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3db18d7e67232db374c859c3357f4ef8c6c97721661fc221fb4d8e2389893cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:09:39 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 31 May 2017 20:09:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 31 May 2017 20:10:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 31 May 2017 20:10:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 31 May 2017 20:10:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 31 May 2017 20:10:08 GMT
VOLUME [/var/lib/docker]
# Wed, 31 May 2017 20:10:10 GMT
EXPOSE 2375/tcp
# Wed, 31 May 2017 20:10:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 31 May 2017 20:10:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b034f56bd89a27392b5616c4486c4b2f6c4fe0f47885b95b29a16c75441ac8f`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c766dfb0ad5ea046adc00e1ce269c82c0874cd813b1446ef566257fc01b16124`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb7fea7d770e4118bf71cd42cabc5d3a046c85c9dd2703b2f16a684e3e0054d`  
		Last Modified: Wed, 31 May 2017 20:23:58 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98089e303f413d6fa88edd3f2e48b256260e1cbd2a4aafa5a3d0d37e37b870e3`  
		Last Modified: Wed, 31 May 2017 20:23:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc1-git`

```console
$ docker pull docker@sha256:07bc77166c9835b6121f9b1ecd07ebe521d5c5871574d610cae76805fec1edd0
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44051450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01ed6de4d83f949d4dbb0c8f51023de63fc482bafaf40abc893a975691bd35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:10:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a686fa10eb52a95055783c21e55dbadc89d6528f3622311a2ef9711262f552`  
		Last Modified: Wed, 31 May 2017 20:28:14 GMT  
		Size: 11.7 MB (11732662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:07bc77166c9835b6121f9b1ecd07ebe521d5c5871574d610cae76805fec1edd0
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44051450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a01ed6de4d83f949d4dbb0c8f51023de63fc482bafaf40abc893a975691bd35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:08:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc1
# Wed, 31 May 2017 20:08:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Wed, 31 May 2017 20:09:09 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 31 May 2017 20:09:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 20:09:11 GMT
CMD ["sh"]
# Wed, 31 May 2017 20:10:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5075090d89604eb77aeb6fd33351df4b61d98974fa04257438a6957c71c33e9`  
		Last Modified: Wed, 31 May 2017 20:21:02 GMT  
		Size: 30.0 MB (29976920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1011761623a9f800af8b5c32029f1bf657de4191dcd1ee581edf4eb52540a570`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a686fa10eb52a95055783c21e55dbadc89d6528f3622311a2ef9711262f552`  
		Last Modified: Wed, 31 May 2017 20:28:14 GMT  
		Size: 11.7 MB (11732662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

**does not exist** (yet?)

## `docker:17.06-rc-git`

**does not exist** (yet?)

## `docker:rc-git`

```console
$ docker pull docker@sha256:aa15050c84b655963b52c59cb1bd1cc49f12c7ce02d61d340f7e09933b82c791
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43580376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7dda11f42e2d1858534e4aa093b4d5575763dc665e863f02955303141819ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 04 May 2017 16:46:44 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc3
# Thu, 04 May 2017 16:46:44 GMT
ENV DOCKER_SHA256_x86_64=4cae10fab8860c824ae46d644cab08c088ee0f5b20b759f975ebf5e19ae7a83c
# Thu, 04 May 2017 16:46:45 GMT
ENV DOCKER_SHA256_armel=8ac04d9f4a56af501c82d2a3df6dfe750eed351036b281ce78933cdb65373369
# Thu, 04 May 2017 16:46:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Thu, 04 May 2017 16:46:51 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 04 May 2017 16:46:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 May 2017 16:46:53 GMT
CMD ["sh"]
# Thu, 04 May 2017 16:47:46 GMT
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
	-	`sha256:7476b3e2fdbe50e8e8f0cef1929de967bd962b14758b934cfa61ad58682ee110`  
		Last Modified: Thu, 04 May 2017 16:48:29 GMT  
		Size: 28.8 MB (28784509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83f01096420ece042e0703ecf084aaac7f31f9641067bbd75d38ade85f23691`  
		Last Modified: Thu, 04 May 2017 16:48:21 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74267b2331c8b0ef9988cb643496c11121a0da38cc415537167097f1e044807c`  
		Last Modified: Thu, 04 May 2017 16:53:03 GMT  
		Size: 10.7 MB (10722393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

**does not exist** (yet?)

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:a9e9437cdb3f8146c6e63174e2cf41ab78e220a6a33127e407619bb11b9dbc20
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ff38ebc77d90d85399ffd26d82e44538e90e6ae2dbd21dd7a523c5263d5057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:a9e9437cdb3f8146c6e63174e2cf41ab78e220a6a33127e407619bb11b9dbc20
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ff38ebc77d90d85399ffd26d82e44538e90e6ae2dbd21dd7a523c5263d5057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:a9e9437cdb3f8146c6e63174e2cf41ab78e220a6a33127e407619bb11b9dbc20
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ff38ebc77d90d85399ffd26d82e44538e90e6ae2dbd21dd7a523c5263d5057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:a9e9437cdb3f8146c6e63174e2cf41ab78e220a6a33127e407619bb11b9dbc20
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ff38ebc77d90d85399ffd26d82e44538e90e6ae2dbd21dd7a523c5263d5057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:a9e9437cdb3f8146c6e63174e2cf41ab78e220a6a33127e407619bb11b9dbc20
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ff38ebc77d90d85399ffd26d82e44538e90e6ae2dbd21dd7a523c5263d5057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:a9e9437cdb3f8146c6e63174e2cf41ab78e220a6a33127e407619bb11b9dbc20
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ff38ebc77d90d85399ffd26d82e44538e90e6ae2dbd21dd7a523c5263d5057`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:58466cce1917464da94035ede533f9b561542379b24d5ba1756f3860e07cdeea
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee518b729774dca2b75e356b4e5d288f4abd00daea5a934c63c4a5a20fe6655`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:46:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:46:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:46:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:46:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:46:08 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:46:09 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:46:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:46:11 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527572e1fdeedd8623e4642e8be0d792bae631915f0a0e857ba768cbd86f364`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73a48b9cd607827f670274897ee2a692027e29672701e47359e54b59f6b7d26`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b732edac86f6e60cf62804795398a5e626b09b7192471f72f32eb39af6b11`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f5fed2129ccf1148c16eb5c41f505681d7672a17d46cc9cce0ec79dd4dadf7`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:58466cce1917464da94035ede533f9b561542379b24d5ba1756f3860e07cdeea
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee518b729774dca2b75e356b4e5d288f4abd00daea5a934c63c4a5a20fe6655`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:46:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:46:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:46:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:46:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:46:08 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:46:09 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:46:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:46:11 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527572e1fdeedd8623e4642e8be0d792bae631915f0a0e857ba768cbd86f364`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73a48b9cd607827f670274897ee2a692027e29672701e47359e54b59f6b7d26`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b732edac86f6e60cf62804795398a5e626b09b7192471f72f32eb39af6b11`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f5fed2129ccf1148c16eb5c41f505681d7672a17d46cc9cce0ec79dd4dadf7`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:58466cce1917464da94035ede533f9b561542379b24d5ba1756f3860e07cdeea
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee518b729774dca2b75e356b4e5d288f4abd00daea5a934c63c4a5a20fe6655`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:46:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:46:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:46:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:46:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:46:08 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:46:09 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:46:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:46:11 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527572e1fdeedd8623e4642e8be0d792bae631915f0a0e857ba768cbd86f364`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73a48b9cd607827f670274897ee2a692027e29672701e47359e54b59f6b7d26`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b732edac86f6e60cf62804795398a5e626b09b7192471f72f32eb39af6b11`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f5fed2129ccf1148c16eb5c41f505681d7672a17d46cc9cce0ec79dd4dadf7`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:58466cce1917464da94035ede533f9b561542379b24d5ba1756f3860e07cdeea
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee518b729774dca2b75e356b4e5d288f4abd00daea5a934c63c4a5a20fe6655`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:46:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:46:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:46:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:46:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:46:08 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:46:09 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:46:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:46:11 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527572e1fdeedd8623e4642e8be0d792bae631915f0a0e857ba768cbd86f364`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73a48b9cd607827f670274897ee2a692027e29672701e47359e54b59f6b7d26`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b732edac86f6e60cf62804795398a5e626b09b7192471f72f32eb39af6b11`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f5fed2129ccf1148c16eb5c41f505681d7672a17d46cc9cce0ec79dd4dadf7`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:58466cce1917464da94035ede533f9b561542379b24d5ba1756f3860e07cdeea
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee518b729774dca2b75e356b4e5d288f4abd00daea5a934c63c4a5a20fe6655`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:46:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:46:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:46:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:46:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:46:08 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:46:09 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:46:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:46:11 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527572e1fdeedd8623e4642e8be0d792bae631915f0a0e857ba768cbd86f364`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73a48b9cd607827f670274897ee2a692027e29672701e47359e54b59f6b7d26`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b732edac86f6e60cf62804795398a5e626b09b7192471f72f32eb39af6b11`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f5fed2129ccf1148c16eb5c41f505681d7672a17d46cc9cce0ec79dd4dadf7`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:58466cce1917464da94035ede533f9b561542379b24d5ba1756f3860e07cdeea
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee518b729774dca2b75e356b4e5d288f4abd00daea5a934c63c4a5a20fe6655`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:46:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:46:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:46:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:46:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:46:08 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:46:09 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:46:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:46:11 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527572e1fdeedd8623e4642e8be0d792bae631915f0a0e857ba768cbd86f364`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73a48b9cd607827f670274897ee2a692027e29672701e47359e54b59f6b7d26`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b732edac86f6e60cf62804795398a5e626b09b7192471f72f32eb39af6b11`  
		Last Modified: Tue, 30 May 2017 16:54:51 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f5fed2129ccf1148c16eb5c41f505681d7672a17d46cc9cce0ec79dd4dadf7`  
		Last Modified: Tue, 30 May 2017 16:54:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:5e22c6b0278741a91624fd577d0be1639605606b060313cb233f06d9f959d2b6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f23141c7d04baa2368880a6fd0589e5aecbc536f9b339642fed516cf0e131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:37 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f274af93cc8caaef8119d598c6bcbc7b4460989fb95feff6afc39a049c2ed82`  
		Last Modified: Tue, 30 May 2017 16:57:13 GMT  
		Size: 11.0 MB (10990209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:5e22c6b0278741a91624fd577d0be1639605606b060313cb233f06d9f959d2b6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f23141c7d04baa2368880a6fd0589e5aecbc536f9b339642fed516cf0e131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:37 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f274af93cc8caaef8119d598c6bcbc7b4460989fb95feff6afc39a049c2ed82`  
		Last Modified: Tue, 30 May 2017 16:57:13 GMT  
		Size: 11.0 MB (10990209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:5e22c6b0278741a91624fd577d0be1639605606b060313cb233f06d9f959d2b6
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f23141c7d04baa2368880a6fd0589e5aecbc536f9b339642fed516cf0e131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:37 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f274af93cc8caaef8119d598c6bcbc7b4460989fb95feff6afc39a049c2ed82`  
		Last Modified: Tue, 30 May 2017 16:57:13 GMT  
		Size: 11.0 MB (10990209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:5e22c6b0278741a91624fd577d0be1639605606b060313cb233f06d9f959d2b6
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f23141c7d04baa2368880a6fd0589e5aecbc536f9b339642fed516cf0e131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:37 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f274af93cc8caaef8119d598c6bcbc7b4460989fb95feff6afc39a049c2ed82`  
		Last Modified: Tue, 30 May 2017 16:57:13 GMT  
		Size: 11.0 MB (10990209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:5e22c6b0278741a91624fd577d0be1639605606b060313cb233f06d9f959d2b6
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f23141c7d04baa2368880a6fd0589e5aecbc536f9b339642fed516cf0e131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:37 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f274af93cc8caaef8119d598c6bcbc7b4460989fb95feff6afc39a049c2ed82`  
		Last Modified: Tue, 30 May 2017 16:57:13 GMT  
		Size: 11.0 MB (10990209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:5e22c6b0278741a91624fd577d0be1639605606b060313cb233f06d9f959d2b6
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9f23141c7d04baa2368880a6fd0589e5aecbc536f9b339642fed516cf0e131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 30 May 2017 16:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:45:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:45:34 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:46:37 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520f85695d44ee69894609545da7d07c264f48ae7c4f5b9aaaa7c51ecce182b1`  
		Last Modified: Tue, 30 May 2017 16:52:33 GMT  
		Size: 28.8 MB (28753661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1277510271ec8f2cf897cb5d6a33497dc9e55c16a1c5ba31c2ec155b20ebcb`  
		Last Modified: Tue, 30 May 2017 16:52:28 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f274af93cc8caaef8119d598c6bcbc7b4460989fb95feff6afc39a049c2ed82`  
		Last Modified: Tue, 30 May 2017 16:57:13 GMT  
		Size: 11.0 MB (10990209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1`

**does not exist** (yet?)

## `docker:17.03.2-ce`

**does not exist** (yet?)

## `docker:17.03.2`

**does not exist** (yet?)

## `docker:17.03-rc`

```console
$ docker pull docker@sha256:52d492b3029b6ad6de6d6962a1cbae6175f4698c40610196bac83157e1f8931b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc` - linux; amd64

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

## `docker:17.03.2-ce-rc1-dind`

**does not exist** (yet?)

## `docker:17.03.2-ce-dind`

**does not exist** (yet?)

## `docker:17.03.2-dind`

**does not exist** (yet?)

## `docker:17.03-rc-dind`

```console
$ docker pull docker@sha256:a500a6076863c56a0f4f1f6e7e4f64ad6a613409cb877f4c155a0ae3c43d0203
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-dind` - linux; amd64

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

## `docker:17.03.2-ce-rc1-git`

**does not exist** (yet?)

## `docker:17.03.2-ce-git`

**does not exist** (yet?)

## `docker:17.03.2-git`

**does not exist** (yet?)

## `docker:17.03-rc-git`

```console
$ docker pull docker@sha256:0bef0d024c20e6c67e02dc3f7f50cc3a335baebd01a8b84a5d23e8ace2b1fade
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-git` - linux; amd64

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

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:0fe99521e1e0058d8da46274ac5176754a139a688d0644f753442f1845c6fd66
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f698e4b401481793d21903d3ee0b468fa9992c13bd5c48b69ac7dc3574b78e21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:0fe99521e1e0058d8da46274ac5176754a139a688d0644f753442f1845c6fd66
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f698e4b401481793d21903d3ee0b468fa9992c13bd5c48b69ac7dc3574b78e21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:0fe99521e1e0058d8da46274ac5176754a139a688d0644f753442f1845c6fd66
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f698e4b401481793d21903d3ee0b468fa9992c13bd5c48b69ac7dc3574b78e21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:0fe99521e1e0058d8da46274ac5176754a139a688d0644f753442f1845c6fd66
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f698e4b401481793d21903d3ee0b468fa9992c13bd5c48b69ac7dc3574b78e21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:e55c52dfd23b8edc98c390053c98a685480c1eb14aee0ec32553f49f2b9f155b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b44f0025c249ec1c8105b1eecfed328d7be82bd6239d8954fae41943bd44f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:44:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:44:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:44:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:44:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:44:30 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:44:31 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:44:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:44:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ed1eb864a09a77f8edcacd2d13971dcfeda2fbd126735118025a447d7055d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 2.2 MB (2165474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9075ab3734f6e0fed49d7a36cdd8fab2be6dc892cbbddb30229a1c7fd0a20bd`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b213ebdcaed194c1afe1297e8065b2990c27e7292c9956072eb0406dd9e3966d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 175.7 KB (175693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d211d031e83dc8315ecc8a9d72d170af892a752477dea68b9d864f9af88ee3c`  
		Last Modified: Tue, 30 May 2017 16:48:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:e55c52dfd23b8edc98c390053c98a685480c1eb14aee0ec32553f49f2b9f155b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b44f0025c249ec1c8105b1eecfed328d7be82bd6239d8954fae41943bd44f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:44:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:44:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:44:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:44:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:44:30 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:44:31 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:44:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:44:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ed1eb864a09a77f8edcacd2d13971dcfeda2fbd126735118025a447d7055d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 2.2 MB (2165474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9075ab3734f6e0fed49d7a36cdd8fab2be6dc892cbbddb30229a1c7fd0a20bd`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b213ebdcaed194c1afe1297e8065b2990c27e7292c9956072eb0406dd9e3966d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 175.7 KB (175693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d211d031e83dc8315ecc8a9d72d170af892a752477dea68b9d864f9af88ee3c`  
		Last Modified: Tue, 30 May 2017 16:48:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:e55c52dfd23b8edc98c390053c98a685480c1eb14aee0ec32553f49f2b9f155b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b44f0025c249ec1c8105b1eecfed328d7be82bd6239d8954fae41943bd44f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:44:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:44:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:44:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:44:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:44:30 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:44:31 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:44:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:44:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ed1eb864a09a77f8edcacd2d13971dcfeda2fbd126735118025a447d7055d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 2.2 MB (2165474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9075ab3734f6e0fed49d7a36cdd8fab2be6dc892cbbddb30229a1c7fd0a20bd`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b213ebdcaed194c1afe1297e8065b2990c27e7292c9956072eb0406dd9e3966d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 175.7 KB (175693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d211d031e83dc8315ecc8a9d72d170af892a752477dea68b9d864f9af88ee3c`  
		Last Modified: Tue, 30 May 2017 16:48:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:e55c52dfd23b8edc98c390053c98a685480c1eb14aee0ec32553f49f2b9f155b
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b44f0025c249ec1c8105b1eecfed328d7be82bd6239d8954fae41943bd44f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:44:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:44:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:44:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:44:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:44:30 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:44:31 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:44:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:44:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ed1eb864a09a77f8edcacd2d13971dcfeda2fbd126735118025a447d7055d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 2.2 MB (2165474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9075ab3734f6e0fed49d7a36cdd8fab2be6dc892cbbddb30229a1c7fd0a20bd`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b213ebdcaed194c1afe1297e8065b2990c27e7292c9956072eb0406dd9e3966d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 175.7 KB (175693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d211d031e83dc8315ecc8a9d72d170af892a752477dea68b9d864f9af88ee3c`  
		Last Modified: Tue, 30 May 2017 16:48:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:e54f57be033a6f86ef8d693c06a231ecd2c27720721849fc743b58daf3671404
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fd3ea056623248f74291df5ca9a6f41db8d1c9f735b347053cb6895365d6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abeef2d96b890a346a773abd2a4c3a8a243a85b2223ee00635107ee9ce7d86a`  
		Last Modified: Tue, 30 May 2017 16:50:29 GMT  
		Size: 11.0 MB (10990202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:e54f57be033a6f86ef8d693c06a231ecd2c27720721849fc743b58daf3671404
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fd3ea056623248f74291df5ca9a6f41db8d1c9f735b347053cb6895365d6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abeef2d96b890a346a773abd2a4c3a8a243a85b2223ee00635107ee9ce7d86a`  
		Last Modified: Tue, 30 May 2017 16:50:29 GMT  
		Size: 11.0 MB (10990202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:e54f57be033a6f86ef8d693c06a231ecd2c27720721849fc743b58daf3671404
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fd3ea056623248f74291df5ca9a6f41db8d1c9f735b347053cb6895365d6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abeef2d96b890a346a773abd2a4c3a8a243a85b2223ee00635107ee9ce7d86a`  
		Last Modified: Tue, 30 May 2017 16:50:29 GMT  
		Size: 11.0 MB (10990202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:e54f57be033a6f86ef8d693c06a231ecd2c27720721849fc743b58daf3671404
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fd3ea056623248f74291df5ca9a6f41db8d1c9f735b347053cb6895365d6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abeef2d96b890a346a773abd2a4c3a8a243a85b2223ee00635107ee9ce7d86a`  
		Last Modified: Tue, 30 May 2017 16:50:29 GMT  
		Size: 11.0 MB (10990202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
