<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.13.0-rc4`](#docker1130-rc4)
-	[`docker:1.13-rc`](#docker113-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.13.0-rc4-dind`](#docker1130-rc4-dind)
-	[`docker:1.13-rc-dind`](#docker113-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.13.0-rc4-git`](#docker1130-rc4-git)
-	[`docker:1.13-rc-git`](#docker113-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.5`](#docker1125)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.5-dind`](#docker1125-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.5-git`](#docker1125-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.5-experimental`](#docker1125-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.5-experimental-dind`](#docker1125-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.5-experimental-git`](#docker1125-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.13.0-rc4`

**does not exist** (yet?)

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

## `docker:1.13.0-rc4-dind`

**does not exist** (yet?)

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

## `docker:1.13.0-rc4-git`

**does not exist** (yet?)

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

## `docker:1.12.5`

**does not exist** (yet?)

## `docker:1.12`

```console
$ docker pull docker@sha256:27f5b98e0ed73186593f99d25b5c818dfb45c4ffac39bcf04b23856f082bf3e9
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32050149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa6eb31717eb7cb8cae5a1fff392eb4db39f82bbbb0b58e6a6ba59b7a88a87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:27f5b98e0ed73186593f99d25b5c818dfb45c4ffac39bcf04b23856f082bf3e9
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32050149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa6eb31717eb7cb8cae5a1fff392eb4db39f82bbbb0b58e6a6ba59b7a88a87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:27f5b98e0ed73186593f99d25b5c818dfb45c4ffac39bcf04b23856f082bf3e9
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32050149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa6eb31717eb7cb8cae5a1fff392eb4db39f82bbbb0b58e6a6ba59b7a88a87c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-dind`

**does not exist** (yet?)

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:66bd210088b54623f014eb0607d1f4b6f0e632a14006455318a6fe28e3195be8
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34118829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bac32ef4b32100e962a25584262f10f8017b07976c9b680c85139ea1fe7fbbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:06 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:07 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:07 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:08 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b91ae8d690a70a5b366877e493ae6f4043efdc077ed1954c8fd657898b491e`  
		Last Modified: Wed, 14 Dec 2016 02:43:30 GMT  
		Size: 2.1 MB (2065064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063e3e0666cce9fb284569c07d6d155a5da9a33afcce888074f8da1273bee424`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e9841ad5f149dbb0a992ceebb8f5214b01897116b25f6aa99167fa6bb26c1`  
		Last Modified: Wed, 14 Dec 2016 02:43:29 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968eed9412516f1380fa2ee4d1e024e8c140fd20ba820f85d44506c8bbdef150`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:66bd210088b54623f014eb0607d1f4b6f0e632a14006455318a6fe28e3195be8
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34118829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bac32ef4b32100e962a25584262f10f8017b07976c9b680c85139ea1fe7fbbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:06 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:07 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:07 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:08 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b91ae8d690a70a5b366877e493ae6f4043efdc077ed1954c8fd657898b491e`  
		Last Modified: Wed, 14 Dec 2016 02:43:30 GMT  
		Size: 2.1 MB (2065064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063e3e0666cce9fb284569c07d6d155a5da9a33afcce888074f8da1273bee424`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e9841ad5f149dbb0a992ceebb8f5214b01897116b25f6aa99167fa6bb26c1`  
		Last Modified: Wed, 14 Dec 2016 02:43:29 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968eed9412516f1380fa2ee4d1e024e8c140fd20ba820f85d44506c8bbdef150`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:66bd210088b54623f014eb0607d1f4b6f0e632a14006455318a6fe28e3195be8
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34118829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bac32ef4b32100e962a25584262f10f8017b07976c9b680c85139ea1fe7fbbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:06 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:07 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:07 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:08 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b91ae8d690a70a5b366877e493ae6f4043efdc077ed1954c8fd657898b491e`  
		Last Modified: Wed, 14 Dec 2016 02:43:30 GMT  
		Size: 2.1 MB (2065064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063e3e0666cce9fb284569c07d6d155a5da9a33afcce888074f8da1273bee424`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e9841ad5f149dbb0a992ceebb8f5214b01897116b25f6aa99167fa6bb26c1`  
		Last Modified: Wed, 14 Dec 2016 02:43:29 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968eed9412516f1380fa2ee4d1e024e8c140fd20ba820f85d44506c8bbdef150`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-git`

**does not exist** (yet?)

## `docker:1.12-git`

```console
$ docker pull docker@sha256:5df9882d4855ba01341160967b2cc549727b0ce16ce928925ddffbfa28a553aa
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41188631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5336253a17a046d33c4de095b346d1166e67be0289bfedf96526ea390fe6574f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:11 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2737f65e91d91e6c90c107089c9913f46c4625ce3c5bf0280b3fea0c7d2adce9`  
		Last Modified: Wed, 14 Dec 2016 02:44:41 GMT  
		Size: 9.1 MB (9138482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:5df9882d4855ba01341160967b2cc549727b0ce16ce928925ddffbfa28a553aa
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41188631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5336253a17a046d33c4de095b346d1166e67be0289bfedf96526ea390fe6574f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:11 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2737f65e91d91e6c90c107089c9913f46c4625ce3c5bf0280b3fea0c7d2adce9`  
		Last Modified: Wed, 14 Dec 2016 02:44:41 GMT  
		Size: 9.1 MB (9138482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:5df9882d4855ba01341160967b2cc549727b0ce16ce928925ddffbfa28a553aa
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41188631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5336253a17a046d33c4de095b346d1166e67be0289bfedf96526ea390fe6574f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:11 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2737f65e91d91e6c90c107089c9913f46c4625ce3c5bf0280b3fea0c7d2adce9`  
		Last Modified: Wed, 14 Dec 2016 02:44:41 GMT  
		Size: 9.1 MB (9138482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental`

**does not exist** (yet?)

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:707050ddfccf6ec4ef7a8217943ae9e8b172e98c0d9d19b7ce0ac35122e7a0ad
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32181542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84891b07a799a4e796ecfc560769092f91c49057b896e4318634031b0b9e2664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:707050ddfccf6ec4ef7a8217943ae9e8b172e98c0d9d19b7ce0ac35122e7a0ad
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32181542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84891b07a799a4e796ecfc560769092f91c49057b896e4318634031b0b9e2664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:707050ddfccf6ec4ef7a8217943ae9e8b172e98c0d9d19b7ce0ac35122e7a0ad
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32181542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84891b07a799a4e796ecfc560769092f91c49057b896e4318634031b0b9e2664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-dind`

**does not exist** (yet?)

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:dace64867c37bdf52f7c83cc8f1c42cec69a5e99203374c5a080011bae2ff2da
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34250208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92b9a8dac984ed349ea07459f7cc99936d5ae44cae266fd07efb677a62856ac`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:24 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:25 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:25 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:26 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:27 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b38e136d114c598d3799645c835bb9eeefffca261f78c32d119e446511ab`  
		Last Modified: Wed, 14 Dec 2016 02:47:17 GMT  
		Size: 2.1 MB (2065047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5e1bfc85230d1b7a5ed00697b5797d675372c6729266565d749b473d7ee3a5`  
		Last Modified: Wed, 14 Dec 2016 02:47:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe35d219c51841a73f7f4f53d7cf49f8268341f27d7b0d20a7e47172f265f65`  
		Last Modified: Wed, 14 Dec 2016 02:47:16 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0e2e48bdd88fef2551680618f0507069df758490b838d2f872f4b9e7f99af4`  
		Last Modified: Wed, 14 Dec 2016 02:47:16 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:dace64867c37bdf52f7c83cc8f1c42cec69a5e99203374c5a080011bae2ff2da
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34250208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92b9a8dac984ed349ea07459f7cc99936d5ae44cae266fd07efb677a62856ac`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:24 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:25 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:25 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:26 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:27 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b38e136d114c598d3799645c835bb9eeefffca261f78c32d119e446511ab`  
		Last Modified: Wed, 14 Dec 2016 02:47:17 GMT  
		Size: 2.1 MB (2065047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5e1bfc85230d1b7a5ed00697b5797d675372c6729266565d749b473d7ee3a5`  
		Last Modified: Wed, 14 Dec 2016 02:47:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe35d219c51841a73f7f4f53d7cf49f8268341f27d7b0d20a7e47172f265f65`  
		Last Modified: Wed, 14 Dec 2016 02:47:16 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0e2e48bdd88fef2551680618f0507069df758490b838d2f872f4b9e7f99af4`  
		Last Modified: Wed, 14 Dec 2016 02:47:16 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:dace64867c37bdf52f7c83cc8f1c42cec69a5e99203374c5a080011bae2ff2da
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34250208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92b9a8dac984ed349ea07459f7cc99936d5ae44cae266fd07efb677a62856ac`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:24 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:25 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:25 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:26 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:27 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b735b38e136d114c598d3799645c835bb9eeefffca261f78c32d119e446511ab`  
		Last Modified: Wed, 14 Dec 2016 02:47:17 GMT  
		Size: 2.1 MB (2065047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5e1bfc85230d1b7a5ed00697b5797d675372c6729266565d749b473d7ee3a5`  
		Last Modified: Wed, 14 Dec 2016 02:47:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe35d219c51841a73f7f4f53d7cf49f8268341f27d7b0d20a7e47172f265f65`  
		Last Modified: Wed, 14 Dec 2016 02:47:16 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0e2e48bdd88fef2551680618f0507069df758490b838d2f872f4b9e7f99af4`  
		Last Modified: Wed, 14 Dec 2016 02:47:16 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-git`

**does not exist** (yet?)

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:e8dfb6d7fd2b33578aa839ca9e9ab68744b220bbe10cc9971a3e06355c5db4da
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41320064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0417333970a6c8c5b2ddf53cb5f21c1481b135c902988ea8d3ea5f9faf6a268a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:31 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a808247aad05965b8fcd1ca8da112dca4c19e1f4e93526d1c4c9642d4dd0792`  
		Last Modified: Wed, 14 Dec 2016 02:48:30 GMT  
		Size: 9.1 MB (9138522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:e8dfb6d7fd2b33578aa839ca9e9ab68744b220bbe10cc9971a3e06355c5db4da
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41320064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0417333970a6c8c5b2ddf53cb5f21c1481b135c902988ea8d3ea5f9faf6a268a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:31 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a808247aad05965b8fcd1ca8da112dca4c19e1f4e93526d1c4c9642d4dd0792`  
		Last Modified: Wed, 14 Dec 2016 02:48:30 GMT  
		Size: 9.1 MB (9138522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:e8dfb6d7fd2b33578aa839ca9e9ab68744b220bbe10cc9971a3e06355c5db4da
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41320064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0417333970a6c8c5b2ddf53cb5f21c1481b135c902988ea8d3ea5f9faf6a268a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:31 GMT
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
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a808247aad05965b8fcd1ca8da112dca4c19e1f4e93526d1c4c9642d4dd0792`  
		Last Modified: Wed, 14 Dec 2016 02:48:30 GMT  
		Size: 9.1 MB (9138522 bytes)  
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
