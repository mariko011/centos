<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.2`](#docker1122)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.2-dind`](#docker1122-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.2-git`](#docker1122-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.2-experimental`](#docker1122-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.2-experimental-dind`](#docker1122-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.2-experimental-git`](#docker1122-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.12.2`

```console
$ docker pull docker@sha256:67cf5bed22d4948b220fac3d496c2655a67d6c9325216675e8e1d4a1f44826b1
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f325b7bb963866d917b43800e518e7c9146cdd70f6070fc8c1cfa2ad4649d6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:67cf5bed22d4948b220fac3d496c2655a67d6c9325216675e8e1d4a1f44826b1
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f325b7bb963866d917b43800e518e7c9146cdd70f6070fc8c1cfa2ad4649d6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:67cf5bed22d4948b220fac3d496c2655a67d6c9325216675e8e1d4a1f44826b1
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f325b7bb963866d917b43800e518e7c9146cdd70f6070fc8c1cfa2ad4649d6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:67cf5bed22d4948b220fac3d496c2655a67d6c9325216675e8e1d4a1f44826b1
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f325b7bb963866d917b43800e518e7c9146cdd70f6070fc8c1cfa2ad4649d6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-dind`

```console
$ docker pull docker@sha256:3fb62fbc94a4ca634c492cfa874fc13f0c9965a6f8059879ba0a363ebe0f2569
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c481302c46f6bdd30d3f67a7cc2a48081d1ea1ce1c72434292e6b35076f2649f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:13:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:13:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:13:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:13:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:56 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:13:57 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:13:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:57 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e187f9f310a074d3b442623105a92b7e1cb4476f94514c9917aaddf51f8a2b`  
		Last Modified: Fri, 14 Oct 2016 17:15:27 GMT  
		Size: 2.1 MB (2065025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8e501c82b8f9078650e8fcc1cc3f9deef5ca2a3b7515f717dc2007f23b7a5f`  
		Last Modified: Fri, 14 Oct 2016 17:15:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44102123ea1f84b0c42d5bb8584d8a0cbfb016bba37b5db64666f29597ba8104`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a1d7eb815aa03aa2c9a9da0b289f0a1c47eb8c1e36745f818679264982500`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:3fb62fbc94a4ca634c492cfa874fc13f0c9965a6f8059879ba0a363ebe0f2569
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c481302c46f6bdd30d3f67a7cc2a48081d1ea1ce1c72434292e6b35076f2649f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:13:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:13:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:13:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:13:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:56 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:13:57 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:13:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:57 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e187f9f310a074d3b442623105a92b7e1cb4476f94514c9917aaddf51f8a2b`  
		Last Modified: Fri, 14 Oct 2016 17:15:27 GMT  
		Size: 2.1 MB (2065025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8e501c82b8f9078650e8fcc1cc3f9deef5ca2a3b7515f717dc2007f23b7a5f`  
		Last Modified: Fri, 14 Oct 2016 17:15:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44102123ea1f84b0c42d5bb8584d8a0cbfb016bba37b5db64666f29597ba8104`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a1d7eb815aa03aa2c9a9da0b289f0a1c47eb8c1e36745f818679264982500`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:3fb62fbc94a4ca634c492cfa874fc13f0c9965a6f8059879ba0a363ebe0f2569
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c481302c46f6bdd30d3f67a7cc2a48081d1ea1ce1c72434292e6b35076f2649f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:13:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:13:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:13:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:13:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:56 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:13:57 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:13:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:57 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e187f9f310a074d3b442623105a92b7e1cb4476f94514c9917aaddf51f8a2b`  
		Last Modified: Fri, 14 Oct 2016 17:15:27 GMT  
		Size: 2.1 MB (2065025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8e501c82b8f9078650e8fcc1cc3f9deef5ca2a3b7515f717dc2007f23b7a5f`  
		Last Modified: Fri, 14 Oct 2016 17:15:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44102123ea1f84b0c42d5bb8584d8a0cbfb016bba37b5db64666f29597ba8104`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a1d7eb815aa03aa2c9a9da0b289f0a1c47eb8c1e36745f818679264982500`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:3fb62fbc94a4ca634c492cfa874fc13f0c9965a6f8059879ba0a363ebe0f2569
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c481302c46f6bdd30d3f67a7cc2a48081d1ea1ce1c72434292e6b35076f2649f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:13:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:13:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:13:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:13:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:56 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:13:57 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:13:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:57 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e187f9f310a074d3b442623105a92b7e1cb4476f94514c9917aaddf51f8a2b`  
		Last Modified: Fri, 14 Oct 2016 17:15:27 GMT  
		Size: 2.1 MB (2065025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8e501c82b8f9078650e8fcc1cc3f9deef5ca2a3b7515f717dc2007f23b7a5f`  
		Last Modified: Fri, 14 Oct 2016 17:15:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44102123ea1f84b0c42d5bb8584d8a0cbfb016bba37b5db64666f29597ba8104`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a1d7eb815aa03aa2c9a9da0b289f0a1c47eb8c1e36745f818679264982500`  
		Last Modified: Fri, 14 Oct 2016 17:15:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-git`

```console
$ docker pull docker@sha256:8fa2ea093e3541122cacc90c1c92cdef35cbbba90bf18178e90fbdd29e1206bd
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920d7a227151dfbe4c357f913501321edd14021d92da1bfc06511ac8f1de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d53c4ffe4ff16f9d44c53c1c1a70d29be1c7ff9ec29ab3a03c27108faeecbe`  
		Last Modified: Fri, 14 Oct 2016 17:16:18 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:8fa2ea093e3541122cacc90c1c92cdef35cbbba90bf18178e90fbdd29e1206bd
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920d7a227151dfbe4c357f913501321edd14021d92da1bfc06511ac8f1de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d53c4ffe4ff16f9d44c53c1c1a70d29be1c7ff9ec29ab3a03c27108faeecbe`  
		Last Modified: Fri, 14 Oct 2016 17:16:18 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:8fa2ea093e3541122cacc90c1c92cdef35cbbba90bf18178e90fbdd29e1206bd
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920d7a227151dfbe4c357f913501321edd14021d92da1bfc06511ac8f1de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d53c4ffe4ff16f9d44c53c1c1a70d29be1c7ff9ec29ab3a03c27108faeecbe`  
		Last Modified: Fri, 14 Oct 2016 17:16:18 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:8fa2ea093e3541122cacc90c1c92cdef35cbbba90bf18178e90fbdd29e1206bd
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920d7a227151dfbe4c357f913501321edd14021d92da1bfc06511ac8f1de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d53c4ffe4ff16f9d44c53c1c1a70d29be1c7ff9ec29ab3a03c27108faeecbe`  
		Last Modified: Fri, 14 Oct 2016 17:16:18 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-experimental`

```console
$ docker pull docker@sha256:c54d3a37f6c9b8ecf81aa026935dbcf3d98de5dbf3d4766177fbf76d4715f0b2
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eded30f02fad8c297c37ea6bd12c111d4ed1494350b6a2798a097f141290cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:c54d3a37f6c9b8ecf81aa026935dbcf3d98de5dbf3d4766177fbf76d4715f0b2
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eded30f02fad8c297c37ea6bd12c111d4ed1494350b6a2798a097f141290cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:c54d3a37f6c9b8ecf81aa026935dbcf3d98de5dbf3d4766177fbf76d4715f0b2
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eded30f02fad8c297c37ea6bd12c111d4ed1494350b6a2798a097f141290cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:c54d3a37f6c9b8ecf81aa026935dbcf3d98de5dbf3d4766177fbf76d4715f0b2
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eded30f02fad8c297c37ea6bd12c111d4ed1494350b6a2798a097f141290cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-experimental-dind`

```console
$ docker pull docker@sha256:ef18681fb3d5c7381bfb6f0419c2082a221e5e3fe0cca06792677989633a659d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5277f4b4d3a03af1e59419ef9222319c50bcb8f32edf4c313f143782a7113`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:14:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:14:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:14:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:14:11 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:13 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:14:13 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:14:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:14 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadde580b272ee80d7a80e4c81a7caec68b2c704b81e3aec40cecae715b895a`  
		Last Modified: Fri, 14 Oct 2016 17:18:04 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77744d9eb3e76a745489c5413bfd960ef8de4f25dcad947fe887f3af20668511`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6689f7368cdaf7502913d40b3251e0cea74fab2123525722304054d9103af`  
		Last Modified: Fri, 14 Oct 2016 17:18:00 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6b1d614e57e99203bcdc5449edda0cdcb7664e0d43a0c3189c184af45f3b4`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:ef18681fb3d5c7381bfb6f0419c2082a221e5e3fe0cca06792677989633a659d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5277f4b4d3a03af1e59419ef9222319c50bcb8f32edf4c313f143782a7113`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:14:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:14:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:14:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:14:11 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:13 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:14:13 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:14:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:14 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadde580b272ee80d7a80e4c81a7caec68b2c704b81e3aec40cecae715b895a`  
		Last Modified: Fri, 14 Oct 2016 17:18:04 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77744d9eb3e76a745489c5413bfd960ef8de4f25dcad947fe887f3af20668511`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6689f7368cdaf7502913d40b3251e0cea74fab2123525722304054d9103af`  
		Last Modified: Fri, 14 Oct 2016 17:18:00 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6b1d614e57e99203bcdc5449edda0cdcb7664e0d43a0c3189c184af45f3b4`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:ef18681fb3d5c7381bfb6f0419c2082a221e5e3fe0cca06792677989633a659d
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5277f4b4d3a03af1e59419ef9222319c50bcb8f32edf4c313f143782a7113`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:14:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:14:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:14:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:14:11 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:13 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:14:13 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:14:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:14 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadde580b272ee80d7a80e4c81a7caec68b2c704b81e3aec40cecae715b895a`  
		Last Modified: Fri, 14 Oct 2016 17:18:04 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77744d9eb3e76a745489c5413bfd960ef8de4f25dcad947fe887f3af20668511`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6689f7368cdaf7502913d40b3251e0cea74fab2123525722304054d9103af`  
		Last Modified: Fri, 14 Oct 2016 17:18:00 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6b1d614e57e99203bcdc5449edda0cdcb7664e0d43a0c3189c184af45f3b4`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:ef18681fb3d5c7381bfb6f0419c2082a221e5e3fe0cca06792677989633a659d
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5277f4b4d3a03af1e59419ef9222319c50bcb8f32edf4c313f143782a7113`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:14:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:14:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:14:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:14:11 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:13 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:14:13 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:14:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:14 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadde580b272ee80d7a80e4c81a7caec68b2c704b81e3aec40cecae715b895a`  
		Last Modified: Fri, 14 Oct 2016 17:18:04 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77744d9eb3e76a745489c5413bfd960ef8de4f25dcad947fe887f3af20668511`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6689f7368cdaf7502913d40b3251e0cea74fab2123525722304054d9103af`  
		Last Modified: Fri, 14 Oct 2016 17:18:00 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6b1d614e57e99203bcdc5449edda0cdcb7664e0d43a0c3189c184af45f3b4`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-experimental-git`

```console
$ docker pull docker@sha256:bf28f7c92ba535045c63766268e2dccdc0a46d00b3b29203e057143ca03a835e
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d63d19d0bff131987800f9c65209958af550a9aa22a51ae544d60dd4857771`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eff1bc07931eee5f711cda45c7f71f252bd2e7f64a51d18a59000e8bc74c7a`  
		Last Modified: Fri, 14 Oct 2016 17:18:52 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:bf28f7c92ba535045c63766268e2dccdc0a46d00b3b29203e057143ca03a835e
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d63d19d0bff131987800f9c65209958af550a9aa22a51ae544d60dd4857771`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eff1bc07931eee5f711cda45c7f71f252bd2e7f64a51d18a59000e8bc74c7a`  
		Last Modified: Fri, 14 Oct 2016 17:18:52 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:bf28f7c92ba535045c63766268e2dccdc0a46d00b3b29203e057143ca03a835e
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d63d19d0bff131987800f9c65209958af550a9aa22a51ae544d60dd4857771`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eff1bc07931eee5f711cda45c7f71f252bd2e7f64a51d18a59000e8bc74c7a`  
		Last Modified: Fri, 14 Oct 2016 17:18:52 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:bf28f7c92ba535045c63766268e2dccdc0a46d00b3b29203e057143ca03a835e
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d63d19d0bff131987800f9c65209958af550a9aa22a51ae544d60dd4857771`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eff1bc07931eee5f711cda45c7f71f252bd2e7f64a51d18a59000e8bc74c7a`  
		Last Modified: Fri, 14 Oct 2016 17:18:52 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:7f2632ed376768ced0a1df75eb4db6245a9cf3bebde75c40c6c4e5b4b0c1c19c
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56056825a7508f16896a265e270dd4239b378f222807aba965ca86f62aeefa06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_VERSION=1.11.2
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Fri, 23 Sep 2016 16:42:00 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:04:17 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6185cb4140226ddf72244312be3b4b0a362f16d0df89789b93db7ccf4feaf6e`  
		Last Modified: Fri, 23 Sep 2016 16:42:16 GMT  
		Size: 20.4 MB (20449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59dcca910bec18d78b5f471919d9c5d0e206ff6cdda5a1f468a0e5d529ac78`  
		Last Modified: Mon, 10 Oct 2016 23:13:02 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:7f2632ed376768ced0a1df75eb4db6245a9cf3bebde75c40c6c4e5b4b0c1c19c
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56056825a7508f16896a265e270dd4239b378f222807aba965ca86f62aeefa06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_VERSION=1.11.2
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Fri, 23 Sep 2016 16:42:00 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:04:17 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6185cb4140226ddf72244312be3b4b0a362f16d0df89789b93db7ccf4feaf6e`  
		Last Modified: Fri, 23 Sep 2016 16:42:16 GMT  
		Size: 20.4 MB (20449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59dcca910bec18d78b5f471919d9c5d0e206ff6cdda5a1f468a0e5d529ac78`  
		Last Modified: Mon, 10 Oct 2016 23:13:02 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:539387c2f14ae7590a19e4ecbbe0bd74fbf4d02f450bc5c81b376c2293bf7f07
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dfd098bc0f70e6a084b3acac66f9813234e74c96a31e01feaba96f8bb3c607`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_VERSION=1.11.2
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Fri, 23 Sep 2016 16:42:00 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:04:17 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:18 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:23 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:23 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:23 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:24 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6185cb4140226ddf72244312be3b4b0a362f16d0df89789b93db7ccf4feaf6e`  
		Last Modified: Fri, 23 Sep 2016 16:42:16 GMT  
		Size: 20.4 MB (20449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59dcca910bec18d78b5f471919d9c5d0e206ff6cdda5a1f468a0e5d529ac78`  
		Last Modified: Mon, 10 Oct 2016 23:13:02 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87167be78115ff8fff0c59499a377622288e69e74821a7406cea332684088d87`  
		Last Modified: Mon, 10 Oct 2016 23:13:28 GMT  
		Size: 2.1 MB (2065023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9096f7ee8fd626393d9c45fd09f14292d26d8f3ef9e0cce41ae69a8b9fa36`  
		Last Modified: Mon, 10 Oct 2016 23:13:27 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839df46053016e73714fe2c17f3918480aeb3e61e0c51ba4f83d3a979821d319`  
		Last Modified: Mon, 10 Oct 2016 23:13:26 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07337045c2a9fe67fd34c3082e6f6ca23b3b14f7e26bedfbc7fbb09731ae0c91`  
		Last Modified: Mon, 10 Oct 2016 23:13:27 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:539387c2f14ae7590a19e4ecbbe0bd74fbf4d02f450bc5c81b376c2293bf7f07
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dfd098bc0f70e6a084b3acac66f9813234e74c96a31e01feaba96f8bb3c607`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_VERSION=1.11.2
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Fri, 23 Sep 2016 16:42:00 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:04:17 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:18 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:23 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:23 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:23 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:24 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6185cb4140226ddf72244312be3b4b0a362f16d0df89789b93db7ccf4feaf6e`  
		Last Modified: Fri, 23 Sep 2016 16:42:16 GMT  
		Size: 20.4 MB (20449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59dcca910bec18d78b5f471919d9c5d0e206ff6cdda5a1f468a0e5d529ac78`  
		Last Modified: Mon, 10 Oct 2016 23:13:02 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87167be78115ff8fff0c59499a377622288e69e74821a7406cea332684088d87`  
		Last Modified: Mon, 10 Oct 2016 23:13:28 GMT  
		Size: 2.1 MB (2065023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f9096f7ee8fd626393d9c45fd09f14292d26d8f3ef9e0cce41ae69a8b9fa36`  
		Last Modified: Mon, 10 Oct 2016 23:13:27 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839df46053016e73714fe2c17f3918480aeb3e61e0c51ba4f83d3a979821d319`  
		Last Modified: Mon, 10 Oct 2016 23:13:26 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07337045c2a9fe67fd34c3082e6f6ca23b3b14f7e26bedfbc7fbb09731ae0c91`  
		Last Modified: Mon, 10 Oct 2016 23:13:27 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:0fee02b9608c7fadec50b1501ec11f2b2254a6edf30878431c1e5c3c0bed14a7
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e7a4348b45308ec5935a8b54f1788bc9e19634c5a80c076da54a892dd483e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_VERSION=1.11.2
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Fri, 23 Sep 2016 16:42:00 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:04:17 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:18 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:25 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6185cb4140226ddf72244312be3b4b0a362f16d0df89789b93db7ccf4feaf6e`  
		Last Modified: Fri, 23 Sep 2016 16:42:16 GMT  
		Size: 20.4 MB (20449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59dcca910bec18d78b5f471919d9c5d0e206ff6cdda5a1f468a0e5d529ac78`  
		Last Modified: Mon, 10 Oct 2016 23:13:02 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e730e7183fabcea6c10ab25397b97c086fad43bc9973b33853c182e4825d7c`  
		Last Modified: Mon, 10 Oct 2016 23:13:54 GMT  
		Size: 9.1 MB (9138524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:0fee02b9608c7fadec50b1501ec11f2b2254a6edf30878431c1e5c3c0bed14a7
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e7a4348b45308ec5935a8b54f1788bc9e19634c5a80c076da54a892dd483e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_VERSION=1.11.2
# Fri, 23 Sep 2016 16:41:57 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Fri, 23 Sep 2016 16:42:00 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:04:17 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:18 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:25 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6185cb4140226ddf72244312be3b4b0a362f16d0df89789b93db7ccf4feaf6e`  
		Last Modified: Fri, 23 Sep 2016 16:42:16 GMT  
		Size: 20.4 MB (20449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a59dcca910bec18d78b5f471919d9c5d0e206ff6cdda5a1f468a0e5d529ac78`  
		Last Modified: Mon, 10 Oct 2016 23:13:02 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e730e7183fabcea6c10ab25397b97c086fad43bc9973b33853c182e4825d7c`  
		Last Modified: Mon, 10 Oct 2016 23:13:54 GMT  
		Size: 9.1 MB (9138524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
