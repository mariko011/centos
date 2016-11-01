<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

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

## `docker:1.12.3`

```console
$ docker pull docker@sha256:83795a384fd7321e1a58d06c2fa2b86a0f0ce9e4a75c91aa382317b3c453671d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf693ec9b5c76a8d05bb5e0c38257d5a575b0e1a7af56037cea8f54e9a751cab`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:b08023cb4cbae1088e5c58de781676493ea802113def889d15623e585a50322d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aed5271702ddf32198563690cd7ac52112506c786caa5bea09779cc82f84add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:83795a384fd7321e1a58d06c2fa2b86a0f0ce9e4a75c91aa382317b3c453671d
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf693ec9b5c76a8d05bb5e0c38257d5a575b0e1a7af56037cea8f54e9a751cab`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:83795a384fd7321e1a58d06c2fa2b86a0f0ce9e4a75c91aa382317b3c453671d
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf693ec9b5c76a8d05bb5e0c38257d5a575b0e1a7af56037cea8f54e9a751cab`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-dind`

```console
$ docker pull docker@sha256:8ba6e1b37a6346712f48efbaca1db050f7d5fe48f279f889200dbf341e1f9f1a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34060068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5134947104f48e7f59019022166fd497c4227dbd8e634f97c0455b01eaf26705`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:25 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:27 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 31 Oct 2016 21:46:27 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:27 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:28 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:28 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11479d6bb0f194261893a7d056b26fccc0e01b04a48ef0fdb39b2d2ec9be9c1e`  
		Last Modified: Mon, 31 Oct 2016 21:48:06 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f107233cbdd9b6541d37d4b2647321fa1495059dc20e36658b12ee3e8b7465`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f95c052d8c439bae53c986077e74c8f5e3cce36a5faadcccd30aef5beebd9`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5d0f77d68c4332363b9e1171c9a1c5ba397da553c7b26589aa378506e76d89`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:8ba6e1b37a6346712f48efbaca1db050f7d5fe48f279f889200dbf341e1f9f1a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34060068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5134947104f48e7f59019022166fd497c4227dbd8e634f97c0455b01eaf26705`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:25 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:27 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 31 Oct 2016 21:46:27 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:27 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:28 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:28 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11479d6bb0f194261893a7d056b26fccc0e01b04a48ef0fdb39b2d2ec9be9c1e`  
		Last Modified: Mon, 31 Oct 2016 21:48:06 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f107233cbdd9b6541d37d4b2647321fa1495059dc20e36658b12ee3e8b7465`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f95c052d8c439bae53c986077e74c8f5e3cce36a5faadcccd30aef5beebd9`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5d0f77d68c4332363b9e1171c9a1c5ba397da553c7b26589aa378506e76d89`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:8ba6e1b37a6346712f48efbaca1db050f7d5fe48f279f889200dbf341e1f9f1a
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34060068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5134947104f48e7f59019022166fd497c4227dbd8e634f97c0455b01eaf26705`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:25 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:27 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 31 Oct 2016 21:46:27 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:27 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:28 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:28 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11479d6bb0f194261893a7d056b26fccc0e01b04a48ef0fdb39b2d2ec9be9c1e`  
		Last Modified: Mon, 31 Oct 2016 21:48:06 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f107233cbdd9b6541d37d4b2647321fa1495059dc20e36658b12ee3e8b7465`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f95c052d8c439bae53c986077e74c8f5e3cce36a5faadcccd30aef5beebd9`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5d0f77d68c4332363b9e1171c9a1c5ba397da553c7b26589aa378506e76d89`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:8ba6e1b37a6346712f48efbaca1db050f7d5fe48f279f889200dbf341e1f9f1a
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34060068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5134947104f48e7f59019022166fd497c4227dbd8e634f97c0455b01eaf26705`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:25 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:27 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 31 Oct 2016 21:46:27 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:27 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:28 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:28 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11479d6bb0f194261893a7d056b26fccc0e01b04a48ef0fdb39b2d2ec9be9c1e`  
		Last Modified: Mon, 31 Oct 2016 21:48:06 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f107233cbdd9b6541d37d4b2647321fa1495059dc20e36658b12ee3e8b7465`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f95c052d8c439bae53c986077e74c8f5e3cce36a5faadcccd30aef5beebd9`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5d0f77d68c4332363b9e1171c9a1c5ba397da553c7b26589aa378506e76d89`  
		Last Modified: Mon, 31 Oct 2016 21:48:03 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.3-git`

```console
$ docker pull docker@sha256:2a0fc2efc017b35df69b2c3e586f58a025d1bb3b1c30dc5110252cc265442854
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50343d182489bacb4e2218285770dd395ad284aab9431de96ec41dae25b1970`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:31 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024d01f7896cdf4711d716da9375465a97ce522fa34efcead0ae044fbc073328`  
		Last Modified: Mon, 31 Oct 2016 21:49:02 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:2a0fc2efc017b35df69b2c3e586f58a025d1bb3b1c30dc5110252cc265442854
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50343d182489bacb4e2218285770dd395ad284aab9431de96ec41dae25b1970`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:31 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024d01f7896cdf4711d716da9375465a97ce522fa34efcead0ae044fbc073328`  
		Last Modified: Mon, 31 Oct 2016 21:49:02 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:2a0fc2efc017b35df69b2c3e586f58a025d1bb3b1c30dc5110252cc265442854
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50343d182489bacb4e2218285770dd395ad284aab9431de96ec41dae25b1970`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:31 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024d01f7896cdf4711d716da9375465a97ce522fa34efcead0ae044fbc073328`  
		Last Modified: Mon, 31 Oct 2016 21:49:02 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:2a0fc2efc017b35df69b2c3e586f58a025d1bb3b1c30dc5110252cc265442854
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50343d182489bacb4e2218285770dd395ad284aab9431de96ec41dae25b1970`
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
# Mon, 31 Oct 2016 21:46:20 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:21 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:31 GMT
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
	-	`sha256:7ee74a896d835287baba1aa769cdc88ec2b48879aabd9e1bfb3382de803495d0`  
		Last Modified: Mon, 31 Oct 2016 21:47:01 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024d01f7896cdf4711d716da9375465a97ce522fa34efcead0ae044fbc073328`  
		Last Modified: Mon, 31 Oct 2016 21:49:02 GMT  
		Size: 9.1 MB (9138523 bytes)  
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
$ docker pull docker@sha256:a9c7be9baf20002cd03d68687cb2d01bfd8daafd96e120aa17b90f61d7f12df1
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.3-experimental-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2d8fc43279fe11ddf1a480bf6c125df9ebdaa2fb5d2d8d687122890c11c78b`
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
# Mon, 31 Oct 2016 21:46:45 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:46 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:46 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:47 GMT
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
	-	`sha256:eeb0323f49f40cdbf235f5126a5f21c2a8808bdbc5c15ecea88d6f7e5310d730`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:a9c7be9baf20002cd03d68687cb2d01bfd8daafd96e120aa17b90f61d7f12df1
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2d8fc43279fe11ddf1a480bf6c125df9ebdaa2fb5d2d8d687122890c11c78b`
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
# Mon, 31 Oct 2016 21:46:45 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:46 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:46 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:47 GMT
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
	-	`sha256:eeb0323f49f40cdbf235f5126a5f21c2a8808bdbc5c15ecea88d6f7e5310d730`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:a9c7be9baf20002cd03d68687cb2d01bfd8daafd96e120aa17b90f61d7f12df1
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2d8fc43279fe11ddf1a480bf6c125df9ebdaa2fb5d2d8d687122890c11c78b`
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
# Mon, 31 Oct 2016 21:46:45 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:46 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:46 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:47 GMT
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
	-	`sha256:eeb0323f49f40cdbf235f5126a5f21c2a8808bdbc5c15ecea88d6f7e5310d730`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:a9c7be9baf20002cd03d68687cb2d01bfd8daafd96e120aa17b90f61d7f12df1
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2d8fc43279fe11ddf1a480bf6c125df9ebdaa2fb5d2d8d687122890c11c78b`
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
# Mon, 31 Oct 2016 21:46:45 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:46 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Oct 2016 21:46:46 GMT
EXPOSE 2375/tcp
# Mon, 31 Oct 2016 21:46:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:47 GMT
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
	-	`sha256:eeb0323f49f40cdbf235f5126a5f21c2a8808bdbc5c15ecea88d6f7e5310d730`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 494.0 B  
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
$ docker pull docker@sha256:da495f208a75f29bdbb75ca602263dfd42543185ebe1d382084952e18282bd4c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17d6daaeb81d973910f99683503d8954c03660210366ea48c6b269c6702dd64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:09:17 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3a4d2bd5297d16132c4f35778a043bd6c2293cd5613352afdd13f7c54f045`  
		Last Modified: Tue, 18 Oct 2016 23:09:29 GMT  
		Size: 9.1 MB (9138560 bytes)  
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
$ docker pull docker@sha256:9cfeaf7b1d09b5a388b8e98fcd132fdf272edd13751b2a1057a781daac07cab7
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e6dbed5c6db733ad05bc4827f80396cbd9bd74069887911bd22d4c951e70f0`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:9cfeaf7b1d09b5a388b8e98fcd132fdf272edd13751b2a1057a781daac07cab7
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e6dbed5c6db733ad05bc4827f80396cbd9bd74069887911bd22d4c951e70f0`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:77cd335b016e0f35a0723deb6fe22169d47146aff792f5ff7b37d0af3c2c5a5f
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf10e9c35ef0ce1ea1607ac96f5e1f8cc51c13b2694df6a1d0fcefd5b48f7257`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:11:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:11:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:11:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:11:42 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:11:43 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:43 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:11:43 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:44 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff3b2a83dfd5829d9d2fadd86786c559f1112f417ff4bfdfded1f8f4a4f320`  
		Last Modified: Tue, 18 Oct 2016 23:11:54 GMT  
		Size: 2.1 MB (2065094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c150fe13a7a475a623e4b377402d85f12cd8ea6165507086d082990fb69b57`  
		Last Modified: Tue, 18 Oct 2016 23:11:55 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a52d05388d38b63893cf012f4b94092c12e1f575f61f6016b3bf4b923740b4e`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d576deb826d04814c6ea0636c1f915099ee9ac5cf5fa8837597084870cc521`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:77cd335b016e0f35a0723deb6fe22169d47146aff792f5ff7b37d0af3c2c5a5f
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf10e9c35ef0ce1ea1607ac96f5e1f8cc51c13b2694df6a1d0fcefd5b48f7257`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:11:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:11:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:11:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:11:42 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:11:43 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:43 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:11:43 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:44 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff3b2a83dfd5829d9d2fadd86786c559f1112f417ff4bfdfded1f8f4a4f320`  
		Last Modified: Tue, 18 Oct 2016 23:11:54 GMT  
		Size: 2.1 MB (2065094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c150fe13a7a475a623e4b377402d85f12cd8ea6165507086d082990fb69b57`  
		Last Modified: Tue, 18 Oct 2016 23:11:55 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a52d05388d38b63893cf012f4b94092c12e1f575f61f6016b3bf4b923740b4e`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d576deb826d04814c6ea0636c1f915099ee9ac5cf5fa8837597084870cc521`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:2c09470e13aa2edfad5846898eac22a2249f3980dca44239e10f547effc1a506
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00b79c99132efcacddad30e67aae39a63e9bd8227389a3dcc25e5efe2be4731`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:12:14 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2a01c992c1da5273137df440db474cac3632a0492e3723d78bf77e0a1890a`  
		Last Modified: Tue, 18 Oct 2016 23:12:27 GMT  
		Size: 9.1 MB (9138540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:2c09470e13aa2edfad5846898eac22a2249f3980dca44239e10f547effc1a506
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00b79c99132efcacddad30e67aae39a63e9bd8227389a3dcc25e5efe2be4731`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:12:14 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2a01c992c1da5273137df440db474cac3632a0492e3723d78bf77e0a1890a`  
		Last Modified: Tue, 18 Oct 2016 23:12:27 GMT  
		Size: 9.1 MB (9138540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
