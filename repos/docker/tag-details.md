<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.13.0-rc3`](#docker1130-rc3)
-	[`docker:1.13-rc`](#docker113-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.13.0-rc3-dind`](#docker1130-rc3-dind)
-	[`docker:1.13-rc-dind`](#docker113-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.13.0-rc3-git`](#docker1130-rc3-git)
-	[`docker:1.13-rc-git`](#docker113-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.3`](#docker1123)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.3-dind`](#docker1123-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.3-git`](#docker1123-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.3-experimental`](#docker1123-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.3-experimental-dind`](#docker1123-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.3-experimental-git`](#docker1123-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.13.0-rc3`

```console
$ docker pull docker@sha256:986f74e5b0810a22e081afd66c96256dbfe1b105ce328da1de0a5c6d32814bdf
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30758877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea67ec1fd1c809e103d22157338b3f2dcad1f7ac0eb88689bb540a977dd91d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc`

```console
$ docker pull docker@sha256:986f74e5b0810a22e081afd66c96256dbfe1b105ce328da1de0a5c6d32814bdf
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30758877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea67ec1fd1c809e103d22157338b3f2dcad1f7ac0eb88689bb540a977dd91d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:986f74e5b0810a22e081afd66c96256dbfe1b105ce328da1de0a5c6d32814bdf
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30758877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea67ec1fd1c809e103d22157338b3f2dcad1f7ac0eb88689bb540a977dd91d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc3-dind`

```console
$ docker pull docker@sha256:162b06861bb7f2651e83fdffc592cff195865a3c0c84ecdb21042e3f7d13ca91
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc3-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32827563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f24fdc4b178797570bbfd07c926be52154f8debd006258008a3631cf25a855`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:38 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:39 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:40 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:41 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:41 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37267b09f2a2db7530503752b324854db707549f48529b897bbe872409ca8f4e`  
		Last Modified: Tue, 06 Dec 2016 20:34:23 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67287fa4f9760047d14df05e30c7cacfa54193dc7ba0b3b50739eb3c94b50f68`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4a2bdcfa8c11c5a6a8e1372c7a802d1b5b727ca0e7a88c4780f93d6259548e`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fb1b56489edeae41724c07783c22f6b3301c5110579f70b8176a12e58b3914`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-dind`

```console
$ docker pull docker@sha256:162b06861bb7f2651e83fdffc592cff195865a3c0c84ecdb21042e3f7d13ca91
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32827563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f24fdc4b178797570bbfd07c926be52154f8debd006258008a3631cf25a855`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:38 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:39 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:40 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:41 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:41 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37267b09f2a2db7530503752b324854db707549f48529b897bbe872409ca8f4e`  
		Last Modified: Tue, 06 Dec 2016 20:34:23 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67287fa4f9760047d14df05e30c7cacfa54193dc7ba0b3b50739eb3c94b50f68`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4a2bdcfa8c11c5a6a8e1372c7a802d1b5b727ca0e7a88c4780f93d6259548e`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fb1b56489edeae41724c07783c22f6b3301c5110579f70b8176a12e58b3914`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:162b06861bb7f2651e83fdffc592cff195865a3c0c84ecdb21042e3f7d13ca91
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32827563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f24fdc4b178797570bbfd07c926be52154f8debd006258008a3631cf25a855`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:38 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:39 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:40 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:41 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:41 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37267b09f2a2db7530503752b324854db707549f48529b897bbe872409ca8f4e`  
		Last Modified: Tue, 06 Dec 2016 20:34:23 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67287fa4f9760047d14df05e30c7cacfa54193dc7ba0b3b50739eb3c94b50f68`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4a2bdcfa8c11c5a6a8e1372c7a802d1b5b727ca0e7a88c4780f93d6259548e`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fb1b56489edeae41724c07783c22f6b3301c5110579f70b8176a12e58b3914`  
		Last Modified: Tue, 06 Dec 2016 20:34:22 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc3-git`

```console
$ docker pull docker@sha256:efe6a653ebab14760e9602d9146b814a38b7a07e04dfba1e49d45284ca093ab6
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc3-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39897435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216f16c7c413573dcfca56cf782619cc4f20b44346f2ff6f969994a6a519ed20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:44 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146efa12b7976989cac270e3d6a54fa85fe333de16b7bf068b35e23b79fb958`  
		Last Modified: Tue, 06 Dec 2016 20:35:13 GMT  
		Size: 9.1 MB (9138558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-git`

```console
$ docker pull docker@sha256:efe6a653ebab14760e9602d9146b814a38b7a07e04dfba1e49d45284ca093ab6
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39897435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216f16c7c413573dcfca56cf782619cc4f20b44346f2ff6f969994a6a519ed20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:44 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146efa12b7976989cac270e3d6a54fa85fe333de16b7bf068b35e23b79fb958`  
		Last Modified: Tue, 06 Dec 2016 20:35:13 GMT  
		Size: 9.1 MB (9138558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:efe6a653ebab14760e9602d9146b814a38b7a07e04dfba1e49d45284ca093ab6
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39897435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216f16c7c413573dcfca56cf782619cc4f20b44346f2ff6f969994a6a519ed20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_VERSION=1.13.0-rc3
# Tue, 06 Dec 2016 20:32:28 GMT
ENV DOCKER_SHA256=2c3c596512034c8e9cf4b0cb43b28d0de7e0a408bc26e8f8f1bc45251570bff4
# Tue, 06 Dec 2016 20:32:32 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:33 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:33 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:44 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443fac940081a1dfa8e10a5953c14dbfcaa90d50b6be621e4683f05e7d7781a`  
		Last Modified: Tue, 06 Dec 2016 20:33:34 GMT  
		Size: 27.5 MB (27530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b363797417a16566067eb731c79169538e65343fab1fa9b79b2b0138b6a221`  
		Last Modified: Tue, 06 Dec 2016 20:33:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146efa12b7976989cac270e3d6a54fa85fe333de16b7bf068b35e23b79fb958`  
		Last Modified: Tue, 06 Dec 2016 20:35:13 GMT  
		Size: 9.1 MB (9138558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3`

```console
$ docker pull docker@sha256:6fe6d16ddb4e850efac6704cb27eb5fd9fc451fbe5551ac7ecf80ece12e75b91
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6daf424db3260899e499cb2bd70a19388324414c8aa60e269e0ef892ded718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:6fe6d16ddb4e850efac6704cb27eb5fd9fc451fbe5551ac7ecf80ece12e75b91
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6daf424db3260899e499cb2bd70a19388324414c8aa60e269e0ef892ded718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:6fe6d16ddb4e850efac6704cb27eb5fd9fc451fbe5551ac7ecf80ece12e75b91
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6daf424db3260899e499cb2bd70a19388324414c8aa60e269e0ef892ded718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:6fe6d16ddb4e850efac6704cb27eb5fd9fc451fbe5551ac7ecf80ece12e75b91
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6daf424db3260899e499cb2bd70a19388324414c8aa60e269e0ef892ded718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-dind`

```console
$ docker pull docker@sha256:21c419d7e8e7283670637bae1db6ddd855719019b8f92d131e7b4ddd0b4d189b
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a20a42c0571a308c2dfd172d1bec514bc4b4b278780efbbadaa2422f5d4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:51 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:52 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:52 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:53 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:54 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4860e1ed654d9de5bc605498ed83498e65d602ec00022b42b9742907472e1546`  
		Last Modified: Tue, 06 Dec 2016 20:37:06 GMT  
		Size: 2.1 MB (2065045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eeadc151a5d3853d76377d44a30b8ee1f864e465920c48c94a03495f52d2983`  
		Last Modified: Tue, 06 Dec 2016 20:37:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dc5e2ee422434f14dc70c63d64cb733838ef094d6f899a4b0d78bdbae2c0e7`  
		Last Modified: Tue, 06 Dec 2016 20:37:04 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15713c3d693612ea515551e56d388fa04f4a4b4bfb037ec5ff6b8e4515f5610`  
		Last Modified: Tue, 06 Dec 2016 20:37:07 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:21c419d7e8e7283670637bae1db6ddd855719019b8f92d131e7b4ddd0b4d189b
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a20a42c0571a308c2dfd172d1bec514bc4b4b278780efbbadaa2422f5d4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:51 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:52 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:52 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:53 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:54 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4860e1ed654d9de5bc605498ed83498e65d602ec00022b42b9742907472e1546`  
		Last Modified: Tue, 06 Dec 2016 20:37:06 GMT  
		Size: 2.1 MB (2065045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eeadc151a5d3853d76377d44a30b8ee1f864e465920c48c94a03495f52d2983`  
		Last Modified: Tue, 06 Dec 2016 20:37:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dc5e2ee422434f14dc70c63d64cb733838ef094d6f899a4b0d78bdbae2c0e7`  
		Last Modified: Tue, 06 Dec 2016 20:37:04 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15713c3d693612ea515551e56d388fa04f4a4b4bfb037ec5ff6b8e4515f5610`  
		Last Modified: Tue, 06 Dec 2016 20:37:07 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:21c419d7e8e7283670637bae1db6ddd855719019b8f92d131e7b4ddd0b4d189b
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a20a42c0571a308c2dfd172d1bec514bc4b4b278780efbbadaa2422f5d4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:51 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:52 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:52 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:53 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:54 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4860e1ed654d9de5bc605498ed83498e65d602ec00022b42b9742907472e1546`  
		Last Modified: Tue, 06 Dec 2016 20:37:06 GMT  
		Size: 2.1 MB (2065045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eeadc151a5d3853d76377d44a30b8ee1f864e465920c48c94a03495f52d2983`  
		Last Modified: Tue, 06 Dec 2016 20:37:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dc5e2ee422434f14dc70c63d64cb733838ef094d6f899a4b0d78bdbae2c0e7`  
		Last Modified: Tue, 06 Dec 2016 20:37:04 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15713c3d693612ea515551e56d388fa04f4a4b4bfb037ec5ff6b8e4515f5610`  
		Last Modified: Tue, 06 Dec 2016 20:37:07 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:21c419d7e8e7283670637bae1db6ddd855719019b8f92d131e7b4ddd0b4d189b
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a20a42c0571a308c2dfd172d1bec514bc4b4b278780efbbadaa2422f5d4ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:32:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:32:50 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:32:51 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:32:52 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:52 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:32:53 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:32:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:54 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4860e1ed654d9de5bc605498ed83498e65d602ec00022b42b9742907472e1546`  
		Last Modified: Tue, 06 Dec 2016 20:37:06 GMT  
		Size: 2.1 MB (2065045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eeadc151a5d3853d76377d44a30b8ee1f864e465920c48c94a03495f52d2983`  
		Last Modified: Tue, 06 Dec 2016 20:37:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dc5e2ee422434f14dc70c63d64cb733838ef094d6f899a4b0d78bdbae2c0e7`  
		Last Modified: Tue, 06 Dec 2016 20:37:04 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15713c3d693612ea515551e56d388fa04f4a4b4bfb037ec5ff6b8e4515f5610`  
		Last Modified: Tue, 06 Dec 2016 20:37:07 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-git`

```console
$ docker pull docker@sha256:663db2933f444b0c161b833bc1e9245d80a96bee5ace0e140048c17808c98ef0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451eda98442419207512a4d9fd716a434a737c14bb721176ed0762368d5d55d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c656e94a01de2e4d99af9fbefa2321527de97bd226c0ed6e494d5846feac52`  
		Last Modified: Tue, 06 Dec 2016 20:38:12 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:663db2933f444b0c161b833bc1e9245d80a96bee5ace0e140048c17808c98ef0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451eda98442419207512a4d9fd716a434a737c14bb721176ed0762368d5d55d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c656e94a01de2e4d99af9fbefa2321527de97bd226c0ed6e494d5846feac52`  
		Last Modified: Tue, 06 Dec 2016 20:38:12 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:663db2933f444b0c161b833bc1e9245d80a96bee5ace0e140048c17808c98ef0
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451eda98442419207512a4d9fd716a434a737c14bb721176ed0762368d5d55d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c656e94a01de2e4d99af9fbefa2321527de97bd226c0ed6e494d5846feac52`  
		Last Modified: Tue, 06 Dec 2016 20:38:12 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:663db2933f444b0c161b833bc1e9245d80a96bee5ace0e140048c17808c98ef0
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451eda98442419207512a4d9fd716a434a737c14bb721176ed0762368d5d55d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:57 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c656e94a01de2e4d99af9fbefa2321527de97bd226c0ed6e494d5846feac52`  
		Last Modified: Tue, 06 Dec 2016 20:38:12 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-experimental`

```console
$ docker pull docker@sha256:540cfed024a02f250993a9b071336a602d40a4cd3db7f5e55aeefd2f12913a27
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-experimental` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d1c9ad52e4d4a96f42e0e04f0a46a922499b9c618c710fd98f646ae24b075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:540cfed024a02f250993a9b071336a602d40a4cd3db7f5e55aeefd2f12913a27
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d1c9ad52e4d4a96f42e0e04f0a46a922499b9c618c710fd98f646ae24b075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:540cfed024a02f250993a9b071336a602d40a4cd3db7f5e55aeefd2f12913a27
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d1c9ad52e4d4a96f42e0e04f0a46a922499b9c618c710fd98f646ae24b075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:540cfed024a02f250993a9b071336a602d40a4cd3db7f5e55aeefd2f12913a27
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d1c9ad52e4d4a96f42e0e04f0a46a922499b9c618c710fd98f646ae24b075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-experimental-dind`

```console
$ docker pull docker@sha256:065da72c5c81e1057e8ebe04180ca8befdf9d529a6ec6e6c20dc682db359a2aa
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98cca1531137e21cc935c80eff11791fd202cc0ef9557e071aee5bc583c41a6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 17 Nov 2016 21:32:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 17 Nov 2016 21:32:14 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Nov 2016 21:32:14 GMT
EXPOSE 2375/tcp
# Thu, 17 Nov 2016 21:32:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Nov 2016 21:32:15 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9db3d6ad7723e409766a6628028e533d5fb4e36cf185aace68478e165a5f0a`  
		Last Modified: Mon, 31 Oct 2016 21:50:57 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2388734983701c6e47d1dc11dc891c692a2a04cdb8b8b056a776bad6211d62e6`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed94c8ab5c26ac6c680f5c4f020f20a2b230a3a7ab6882db618920779ba277`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6538700891d82ffb19ac5e4bdf701dd2a8ad0be47e6a303f128a0c7fd1c6b4`  
		Last Modified: Thu, 17 Nov 2016 21:38:49 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:065da72c5c81e1057e8ebe04180ca8befdf9d529a6ec6e6c20dc682db359a2aa
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98cca1531137e21cc935c80eff11791fd202cc0ef9557e071aee5bc583c41a6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 17 Nov 2016 21:32:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 17 Nov 2016 21:32:14 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Nov 2016 21:32:14 GMT
EXPOSE 2375/tcp
# Thu, 17 Nov 2016 21:32:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Nov 2016 21:32:15 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9db3d6ad7723e409766a6628028e533d5fb4e36cf185aace68478e165a5f0a`  
		Last Modified: Mon, 31 Oct 2016 21:50:57 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2388734983701c6e47d1dc11dc891c692a2a04cdb8b8b056a776bad6211d62e6`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed94c8ab5c26ac6c680f5c4f020f20a2b230a3a7ab6882db618920779ba277`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6538700891d82ffb19ac5e4bdf701dd2a8ad0be47e6a303f128a0c7fd1c6b4`  
		Last Modified: Thu, 17 Nov 2016 21:38:49 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:065da72c5c81e1057e8ebe04180ca8befdf9d529a6ec6e6c20dc682db359a2aa
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98cca1531137e21cc935c80eff11791fd202cc0ef9557e071aee5bc583c41a6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 17 Nov 2016 21:32:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 17 Nov 2016 21:32:14 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Nov 2016 21:32:14 GMT
EXPOSE 2375/tcp
# Thu, 17 Nov 2016 21:32:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Nov 2016 21:32:15 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9db3d6ad7723e409766a6628028e533d5fb4e36cf185aace68478e165a5f0a`  
		Last Modified: Mon, 31 Oct 2016 21:50:57 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2388734983701c6e47d1dc11dc891c692a2a04cdb8b8b056a776bad6211d62e6`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed94c8ab5c26ac6c680f5c4f020f20a2b230a3a7ab6882db618920779ba277`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6538700891d82ffb19ac5e4bdf701dd2a8ad0be47e6a303f128a0c7fd1c6b4`  
		Last Modified: Thu, 17 Nov 2016 21:38:49 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:065da72c5c81e1057e8ebe04180ca8befdf9d529a6ec6e6c20dc682db359a2aa
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98cca1531137e21cc935c80eff11791fd202cc0ef9557e071aee5bc583c41a6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 17 Nov 2016 21:32:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 17 Nov 2016 21:32:14 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Nov 2016 21:32:14 GMT
EXPOSE 2375/tcp
# Thu, 17 Nov 2016 21:32:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Nov 2016 21:32:15 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9db3d6ad7723e409766a6628028e533d5fb4e36cf185aace68478e165a5f0a`  
		Last Modified: Mon, 31 Oct 2016 21:50:57 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2388734983701c6e47d1dc11dc891c692a2a04cdb8b8b056a776bad6211d62e6`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed94c8ab5c26ac6c680f5c4f020f20a2b230a3a7ab6882db618920779ba277`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6538700891d82ffb19ac5e4bdf701dd2a8ad0be47e6a303f128a0c7fd1c6b4`  
		Last Modified: Thu, 17 Nov 2016 21:38:49 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-experimental-git`

```console
$ docker pull docker@sha256:1d4159947ca23e44954aca19218df9afacef77a9bb9627b401844d2d0d815e24
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-experimental-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345c216f32e40cf7241c1abcc8018bf6e491ad79cc3d5b618ee6a33f3994f8bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8830208af3130734becf8c4e481eef806ae0d8c5a59e7d810367786a3caaa98`  
		Last Modified: Mon, 31 Oct 2016 21:51:51 GMT  
		Size: 9.1 MB (9138555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:1d4159947ca23e44954aca19218df9afacef77a9bb9627b401844d2d0d815e24
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345c216f32e40cf7241c1abcc8018bf6e491ad79cc3d5b618ee6a33f3994f8bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8830208af3130734becf8c4e481eef806ae0d8c5a59e7d810367786a3caaa98`  
		Last Modified: Mon, 31 Oct 2016 21:51:51 GMT  
		Size: 9.1 MB (9138555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:1d4159947ca23e44954aca19218df9afacef77a9bb9627b401844d2d0d815e24
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345c216f32e40cf7241c1abcc8018bf6e491ad79cc3d5b618ee6a33f3994f8bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8830208af3130734becf8c4e481eef806ae0d8c5a59e7d810367786a3caaa98`  
		Last Modified: Mon, 31 Oct 2016 21:51:51 GMT  
		Size: 9.1 MB (9138555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:1d4159947ca23e44954aca19218df9afacef77a9bb9627b401844d2d0d815e24
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345c216f32e40cf7241c1abcc8018bf6e491ad79cc3d5b618ee6a33f3994f8bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8830208af3130734becf8c4e481eef806ae0d8c5a59e7d810367786a3caaa98`  
		Last Modified: Mon, 31 Oct 2016 21:51:51 GMT  
		Size: 9.1 MB (9138555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:a0deefa4192e432d627b4a197cb9b311e90f5f61b806a26f3fdcad9723d607d8
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c3bcdb1a5ba3f25e0bccfe1fac47d55cbdaeaf86227bc6f6e6fd075929b068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:a0deefa4192e432d627b4a197cb9b311e90f5f61b806a26f3fdcad9723d607d8
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c3bcdb1a5ba3f25e0bccfe1fac47d55cbdaeaf86227bc6f6e6fd075929b068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:cb63608d5ef2295d7f454b63f51da1e73f834c5cae1ad4f5f8ce19009ed4e4f9
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2656b8d08fc0addba9e97842184ee58218b36036b90a8513e29719525eb1ba19`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:33:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:33:03 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:33:04 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:33:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:33:05 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:33:06 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:33:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:33:07 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a043ecad0dce3f4056d9202e8da329fdfd850c2fc405934b3024b02c7bd44`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6efedf0c12b6277ad2cf476bda10ce48c638f078f0f66df9f8b4f719c1ff78`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f8a2999df468488bc480ed3876364a7898e415b3f83557378af725bcc7def`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62eec15f56195074f1140e127d0066094afd4da6c64f6e342627d5f7e3c63aa`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:cb63608d5ef2295d7f454b63f51da1e73f834c5cae1ad4f5f8ce19009ed4e4f9
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2656b8d08fc0addba9e97842184ee58218b36036b90a8513e29719525eb1ba19`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:33:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:33:03 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:33:04 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:33:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:33:05 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:33:06 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:33:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:33:07 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a043ecad0dce3f4056d9202e8da329fdfd850c2fc405934b3024b02c7bd44`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6efedf0c12b6277ad2cf476bda10ce48c638f078f0f66df9f8b4f719c1ff78`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f8a2999df468488bc480ed3876364a7898e415b3f83557378af725bcc7def`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62eec15f56195074f1140e127d0066094afd4da6c64f6e342627d5f7e3c63aa`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:49bd726dec2d7a02cea5bd2059b7dc251b4698d09f30454a83981a60e1722ec3
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2150b9c812f7e9b50bf5b97eddbaabaf49bc9006bbc112c75fda5fea9ab3fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f21cac9a6ed9a9428df37acc8b1bc3fc588903c0993dee36a4c4a346cda0c90`  
		Last Modified: Tue, 06 Dec 2016 20:43:18 GMT  
		Size: 9.1 MB (9138545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:49bd726dec2d7a02cea5bd2059b7dc251b4698d09f30454a83981a60e1722ec3
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2150b9c812f7e9b50bf5b97eddbaabaf49bc9006bbc112c75fda5fea9ab3fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f21cac9a6ed9a9428df37acc8b1bc3fc588903c0993dee36a4c4a346cda0c90`  
		Last Modified: Tue, 06 Dec 2016 20:43:18 GMT  
		Size: 9.1 MB (9138545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
