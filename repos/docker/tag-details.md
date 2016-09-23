<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.1`](#docker1121)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.1-dind`](#docker1121-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.1-git`](#docker1121-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.1-experimental`](#docker1121-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.1-experimental-dind`](#docker1121-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.1-experimental-git`](#docker1121-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.12.1`

```console
$ docker pull docker@sha256:b97831efd192a01be9a22800bc298713c27812b708479a5d7d87c17204dc7fda
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823ed1e1d24c1e0850a3ee988cc3775d37dea4bfd158462d60deb101f7ffff12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:b97831efd192a01be9a22800bc298713c27812b708479a5d7d87c17204dc7fda
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823ed1e1d24c1e0850a3ee988cc3775d37dea4bfd158462d60deb101f7ffff12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:b97831efd192a01be9a22800bc298713c27812b708479a5d7d87c17204dc7fda
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823ed1e1d24c1e0850a3ee988cc3775d37dea4bfd158462d60deb101f7ffff12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:b97831efd192a01be9a22800bc298713c27812b708479a5d7d87c17204dc7fda
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823ed1e1d24c1e0850a3ee988cc3775d37dea4bfd158462d60deb101f7ffff12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-dind`

```console
$ docker pull docker@sha256:55feb0367f878a4a1df109ca9b7098ab4c19a551b699b54ae64413d8f5f85d74
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5d765950ff08b7b09f27438e7b2b2346ee0148151b3328a482796a8018a67c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:37:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:37:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:37:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:37:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:37:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:37:56 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:37:57 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:37:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:37:57 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34a03934fad7ca76721bb2d6e6ea5059a4cb65da506f33bdcf82ddb39c6215`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 2.1 MB (2065072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19938c0ba7188e8c1d346a1a0377bc9019fe63bc08897dc847d8d8bb0cefc826`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e925ec838ce865af1e3fcfd4c8c445d9f2713666fd6b620a68ad08eb37e5b6a2`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095941f5b412d2a2cf0ebcb330d1fe12c3e00ea8edc8dfdc4d30a586a4d8176c`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:55feb0367f878a4a1df109ca9b7098ab4c19a551b699b54ae64413d8f5f85d74
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5d765950ff08b7b09f27438e7b2b2346ee0148151b3328a482796a8018a67c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:37:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:37:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:37:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:37:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:37:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:37:56 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:37:57 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:37:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:37:57 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34a03934fad7ca76721bb2d6e6ea5059a4cb65da506f33bdcf82ddb39c6215`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 2.1 MB (2065072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19938c0ba7188e8c1d346a1a0377bc9019fe63bc08897dc847d8d8bb0cefc826`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e925ec838ce865af1e3fcfd4c8c445d9f2713666fd6b620a68ad08eb37e5b6a2`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095941f5b412d2a2cf0ebcb330d1fe12c3e00ea8edc8dfdc4d30a586a4d8176c`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:55feb0367f878a4a1df109ca9b7098ab4c19a551b699b54ae64413d8f5f85d74
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5d765950ff08b7b09f27438e7b2b2346ee0148151b3328a482796a8018a67c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:37:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:37:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:37:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:37:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:37:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:37:56 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:37:57 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:37:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:37:57 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34a03934fad7ca76721bb2d6e6ea5059a4cb65da506f33bdcf82ddb39c6215`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 2.1 MB (2065072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19938c0ba7188e8c1d346a1a0377bc9019fe63bc08897dc847d8d8bb0cefc826`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e925ec838ce865af1e3fcfd4c8c445d9f2713666fd6b620a68ad08eb37e5b6a2`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095941f5b412d2a2cf0ebcb330d1fe12c3e00ea8edc8dfdc4d30a586a4d8176c`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:55feb0367f878a4a1df109ca9b7098ab4c19a551b699b54ae64413d8f5f85d74
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5d765950ff08b7b09f27438e7b2b2346ee0148151b3328a482796a8018a67c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:37:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:37:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:37:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:37:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:37:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:37:56 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:37:57 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:37:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:37:57 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34a03934fad7ca76721bb2d6e6ea5059a4cb65da506f33bdcf82ddb39c6215`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 2.1 MB (2065072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19938c0ba7188e8c1d346a1a0377bc9019fe63bc08897dc847d8d8bb0cefc826`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e925ec838ce865af1e3fcfd4c8c445d9f2713666fd6b620a68ad08eb37e5b6a2`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095941f5b412d2a2cf0ebcb330d1fe12c3e00ea8edc8dfdc4d30a586a4d8176c`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-git`

```console
$ docker pull docker@sha256:df0d9b73d8ddec0a6ade65adb66372a77fcaf0e25b211f51a22852aa271d787a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8585752bf0ee18618c0b0e71514ba8c837edf731819803741b7836586b4edf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:41:13 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee03889a361eee42e30d1a370c7df2755eaf7265fbb79db98e5f49beb4c50c`  
		Last Modified: Fri, 23 Sep 2016 16:41:23 GMT  
		Size: 9.1 MB (9138524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:df0d9b73d8ddec0a6ade65adb66372a77fcaf0e25b211f51a22852aa271d787a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8585752bf0ee18618c0b0e71514ba8c837edf731819803741b7836586b4edf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:41:13 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee03889a361eee42e30d1a370c7df2755eaf7265fbb79db98e5f49beb4c50c`  
		Last Modified: Fri, 23 Sep 2016 16:41:23 GMT  
		Size: 9.1 MB (9138524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:df0d9b73d8ddec0a6ade65adb66372a77fcaf0e25b211f51a22852aa271d787a
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8585752bf0ee18618c0b0e71514ba8c837edf731819803741b7836586b4edf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:41:13 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee03889a361eee42e30d1a370c7df2755eaf7265fbb79db98e5f49beb4c50c`  
		Last Modified: Fri, 23 Sep 2016 16:41:23 GMT  
		Size: 9.1 MB (9138524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:df0d9b73d8ddec0a6ade65adb66372a77fcaf0e25b211f51a22852aa271d787a
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8585752bf0ee18618c0b0e71514ba8c837edf731819803741b7836586b4edf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:41:13 GMT
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
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee03889a361eee42e30d1a370c7df2755eaf7265fbb79db98e5f49beb4c50c`  
		Last Modified: Fri, 23 Sep 2016 16:41:23 GMT  
		Size: 9.1 MB (9138524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental`

```console
$ docker pull docker@sha256:021a9bb41e35fbdb5a950970fbbeaecd4d36922ec6f4af2075c5158caa49c5bf
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a745271ed563a3a147eddf13d02721e35cdfbfd14effc2b32f854a2ead28cc1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:021a9bb41e35fbdb5a950970fbbeaecd4d36922ec6f4af2075c5158caa49c5bf
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a745271ed563a3a147eddf13d02721e35cdfbfd14effc2b32f854a2ead28cc1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:021a9bb41e35fbdb5a950970fbbeaecd4d36922ec6f4af2075c5158caa49c5bf
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a745271ed563a3a147eddf13d02721e35cdfbfd14effc2b32f854a2ead28cc1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:021a9bb41e35fbdb5a950970fbbeaecd4d36922ec6f4af2075c5158caa49c5bf
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a745271ed563a3a147eddf13d02721e35cdfbfd14effc2b32f854a2ead28cc1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental-dind`

```console
$ docker pull docker@sha256:db17dd4f5b6f44f2cfba01ef0e1d591b2af1bb74c9fc0d3a6bc8ecffb6069218
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66c14b3aab7f7dd00d93fbe52da954550bcb732caadcf90a178293d576c5a3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:39:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:39:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:39:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:39:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:39:46 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:39:46 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:39:47 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:39:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:39:47 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026e4545b650e9df67e0f04a5f5d07b22dda0203ee33b9a5205fe9ed6d80cb4`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 2.1 MB (2065052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d15f585c97f7bfeda8fd87b3f4cac002586dec0ac6b4b03e88f5a890944132`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160b52153a252d7340bce1bb6317ee9ee3aea72eeda25198644f9b281cc3bfae`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b65c52178d55853598960b974b221925567ad4b593dfea2baae64d8ad2e001`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:db17dd4f5b6f44f2cfba01ef0e1d591b2af1bb74c9fc0d3a6bc8ecffb6069218
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66c14b3aab7f7dd00d93fbe52da954550bcb732caadcf90a178293d576c5a3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:39:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:39:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:39:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:39:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:39:46 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:39:46 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:39:47 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:39:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:39:47 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026e4545b650e9df67e0f04a5f5d07b22dda0203ee33b9a5205fe9ed6d80cb4`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 2.1 MB (2065052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d15f585c97f7bfeda8fd87b3f4cac002586dec0ac6b4b03e88f5a890944132`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160b52153a252d7340bce1bb6317ee9ee3aea72eeda25198644f9b281cc3bfae`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b65c52178d55853598960b974b221925567ad4b593dfea2baae64d8ad2e001`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:db17dd4f5b6f44f2cfba01ef0e1d591b2af1bb74c9fc0d3a6bc8ecffb6069218
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66c14b3aab7f7dd00d93fbe52da954550bcb732caadcf90a178293d576c5a3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:39:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:39:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:39:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:39:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:39:46 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:39:46 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:39:47 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:39:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:39:47 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026e4545b650e9df67e0f04a5f5d07b22dda0203ee33b9a5205fe9ed6d80cb4`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 2.1 MB (2065052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d15f585c97f7bfeda8fd87b3f4cac002586dec0ac6b4b03e88f5a890944132`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160b52153a252d7340bce1bb6317ee9ee3aea72eeda25198644f9b281cc3bfae`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b65c52178d55853598960b974b221925567ad4b593dfea2baae64d8ad2e001`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:db17dd4f5b6f44f2cfba01ef0e1d591b2af1bb74c9fc0d3a6bc8ecffb6069218
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66c14b3aab7f7dd00d93fbe52da954550bcb732caadcf90a178293d576c5a3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:39:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:39:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:39:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:39:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:39:46 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:39:46 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:39:47 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:39:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:39:47 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d026e4545b650e9df67e0f04a5f5d07b22dda0203ee33b9a5205fe9ed6d80cb4`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 2.1 MB (2065052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d15f585c97f7bfeda8fd87b3f4cac002586dec0ac6b4b03e88f5a890944132`  
		Last Modified: Fri, 23 Sep 2016 16:39:55 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160b52153a252d7340bce1bb6317ee9ee3aea72eeda25198644f9b281cc3bfae`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b65c52178d55853598960b974b221925567ad4b593dfea2baae64d8ad2e001`  
		Last Modified: Fri, 23 Sep 2016 16:39:54 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental-git`

```console
$ docker pull docker@sha256:7f587534e2ffdde8e2e28b4041dd4ca608c6ab60b06e5a1c3cee062079b57270
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0693835acfe1201c6c32dc7eafdd2e080f8e2f02fc3f29268a4514f8e7be08d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:40:29 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75203a08a44ca7a52f58694f2ddecb42908f77154e604069829a66c55e204c78`  
		Last Modified: Fri, 23 Sep 2016 16:40:39 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:7f587534e2ffdde8e2e28b4041dd4ca608c6ab60b06e5a1c3cee062079b57270
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0693835acfe1201c6c32dc7eafdd2e080f8e2f02fc3f29268a4514f8e7be08d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:40:29 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75203a08a44ca7a52f58694f2ddecb42908f77154e604069829a66c55e204c78`  
		Last Modified: Fri, 23 Sep 2016 16:40:39 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:5cf5290269a6571dc6d98f8ea6c1ac61a972da83a15d6bd925f27b3359290653
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41211203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8773ee253ac5ab6c0c922dc7b6c08bf335c0f874cf06c35daa65463eb17fc669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:53:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96daf78963bc9d6f97e57399e04755d2d01f120a6ebacdc1f3c3b712e92ee9d3`  
		Last Modified: Mon, 19 Sep 2016 23:53:49 GMT  
		Size: 9.1 MB (9138498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:7f587534e2ffdde8e2e28b4041dd4ca608c6ab60b06e5a1c3cee062079b57270
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0693835acfe1201c6c32dc7eafdd2e080f8e2f02fc3f29268a4514f8e7be08d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:40:29 GMT
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
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75203a08a44ca7a52f58694f2ddecb42908f77154e604069829a66c55e204c78`  
		Last Modified: Fri, 23 Sep 2016 16:40:39 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:e30ae4095b5efe42a5dff3aab2a86afff17a777aa7f7cfcb00b6a5817a461370
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29b8fab739e13bd4d35403a10959e7a4e95a44582b4e1b0c1b0df799f30a14b`
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
# Fri, 23 Sep 2016 16:42:00 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:01 GMT
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
	-	`sha256:dc27f78d7f499c19d5771d7fc2d52035507c84ef0d46d7e4db89eee15be1076a`  
		Last Modified: Fri, 23 Sep 2016 16:42:08 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:e30ae4095b5efe42a5dff3aab2a86afff17a777aa7f7cfcb00b6a5817a461370
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29b8fab739e13bd4d35403a10959e7a4e95a44582b4e1b0c1b0df799f30a14b`
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
# Fri, 23 Sep 2016 16:42:00 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:01 GMT
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
	-	`sha256:dc27f78d7f499c19d5771d7fc2d52035507c84ef0d46d7e4db89eee15be1076a`  
		Last Modified: Fri, 23 Sep 2016 16:42:08 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:27b8cce015c0ef618d1fb0924cac85d0462e11c1e1c3009770960a60fc36a210
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb81c02801da25ae1aec065acf18c02726278a8e0da37ec26b3f1509598e5a8`
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
# Fri, 23 Sep 2016 16:42:00 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:01 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:42:37 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:42:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:42:38 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:42:39 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:42:39 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:40 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:42:40 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:42:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:40 GMT
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
	-	`sha256:dc27f78d7f499c19d5771d7fc2d52035507c84ef0d46d7e4db89eee15be1076a`  
		Last Modified: Fri, 23 Sep 2016 16:42:08 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe2cd6b5de80e5ee4991acd03cf570701782342bf9abaa829f780a7f629683a`  
		Last Modified: Fri, 23 Sep 2016 16:42:48 GMT  
		Size: 2.1 MB (2065038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7be3b349f574cc07c54e874098763ddaafdaa97b46bbe36e66181dc62d0f0bf`  
		Last Modified: Fri, 23 Sep 2016 16:42:47 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1e203cf8fc952b48c559a360646c63662294528e91dfcd24b5f9898b1e0426`  
		Last Modified: Fri, 23 Sep 2016 16:42:47 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6788ace9c1b3064d58c76a95bef21f410b86bbc7a831c0d6e8d184e3c4166046`  
		Last Modified: Fri, 23 Sep 2016 16:42:47 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:27b8cce015c0ef618d1fb0924cac85d0462e11c1e1c3009770960a60fc36a210
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb81c02801da25ae1aec065acf18c02726278a8e0da37ec26b3f1509598e5a8`
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
# Fri, 23 Sep 2016 16:42:00 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:01 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:42:37 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:42:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:42:38 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:42:39 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:42:39 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:40 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:42:40 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:42:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:40 GMT
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
	-	`sha256:dc27f78d7f499c19d5771d7fc2d52035507c84ef0d46d7e4db89eee15be1076a`  
		Last Modified: Fri, 23 Sep 2016 16:42:08 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe2cd6b5de80e5ee4991acd03cf570701782342bf9abaa829f780a7f629683a`  
		Last Modified: Fri, 23 Sep 2016 16:42:48 GMT  
		Size: 2.1 MB (2065038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7be3b349f574cc07c54e874098763ddaafdaa97b46bbe36e66181dc62d0f0bf`  
		Last Modified: Fri, 23 Sep 2016 16:42:47 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1e203cf8fc952b48c559a360646c63662294528e91dfcd24b5f9898b1e0426`  
		Last Modified: Fri, 23 Sep 2016 16:42:47 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6788ace9c1b3064d58c76a95bef21f410b86bbc7a831c0d6e8d184e3c4166046`  
		Last Modified: Fri, 23 Sep 2016 16:42:47 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:54916afad4199a6f1ee09397194e8adf104517c6bd2c8c835160ed0fa3aaadc0
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13668b6c446555ee2f3ae5104e36143e89386fcf801daf7bb10cb44342ce0a1e`
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
# Fri, 23 Sep 2016 16:42:00 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:01 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:43:07 GMT
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
	-	`sha256:dc27f78d7f499c19d5771d7fc2d52035507c84ef0d46d7e4db89eee15be1076a`  
		Last Modified: Fri, 23 Sep 2016 16:42:08 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48566e4d8365e929b9528b31fe8aafb181d642632da6494c5ebe34584e7815ca`  
		Last Modified: Fri, 23 Sep 2016 16:43:18 GMT  
		Size: 9.1 MB (9138542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:54916afad4199a6f1ee09397194e8adf104517c6bd2c8c835160ed0fa3aaadc0
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13668b6c446555ee2f3ae5104e36143e89386fcf801daf7bb10cb44342ce0a1e`
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
# Fri, 23 Sep 2016 16:42:00 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:42:01 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:43:07 GMT
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
	-	`sha256:dc27f78d7f499c19d5771d7fc2d52035507c84ef0d46d7e4db89eee15be1076a`  
		Last Modified: Fri, 23 Sep 2016 16:42:08 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48566e4d8365e929b9528b31fe8aafb181d642632da6494c5ebe34584e7815ca`  
		Last Modified: Fri, 23 Sep 2016 16:43:18 GMT  
		Size: 9.1 MB (9138542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
