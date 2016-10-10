<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.2-rc3`](#docker1122-rc3)
-	[`docker:1.12-rc`](#docker112-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.12.2-rc3-dind`](#docker1122-rc3-dind)
-	[`docker:1.12-rc-dind`](#docker112-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.12.2-rc3-git`](#docker1122-rc3-git)
-	[`docker:1.12-rc-git`](#docker112-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.2-rc3-experimental`](#docker1122-rc3-experimental)
-	[`docker:1.12-rc-experimental`](#docker112-rc-experimental)
-	[`docker:rc-experimental`](#dockerrc-experimental)
-	[`docker:1.12.2-rc3-experimental-dind`](#docker1122-rc3-experimental-dind)
-	[`docker:1.12-rc-experimental-dind`](#docker112-rc-experimental-dind)
-	[`docker:rc-experimental-dind`](#dockerrc-experimental-dind)
-	[`docker:1.12.2-rc3-experimental-git`](#docker1122-rc3-experimental-git)
-	[`docker:1.12-rc-experimental-git`](#docker112-rc-experimental-git)
-	[`docker:rc-experimental-git`](#dockerrc-experimental-git)
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

## `docker:1.12.2-rc3`

```console
$ docker pull docker@sha256:b46708c03db70f658bdbc2c8503a9af0cae96f3d964fdda8b8dff59208e984e3
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3985a7231884513198ed09ec6fdbff0db4096053fcb093e3b8b1cfabb0a5d614`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc`

```console
$ docker pull docker@sha256:b46708c03db70f658bdbc2c8503a9af0cae96f3d964fdda8b8dff59208e984e3
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3985a7231884513198ed09ec6fdbff0db4096053fcb093e3b8b1cfabb0a5d614`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:b46708c03db70f658bdbc2c8503a9af0cae96f3d964fdda8b8dff59208e984e3
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3985a7231884513198ed09ec6fdbff0db4096053fcb093e3b8b1cfabb0a5d614`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc3-dind`

```console
$ docker pull docker@sha256:4120fdfa50033ba8d3bb13edfd40da916403058283afa8503c6312dbdb590434
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc3-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5817feb393719bb0effed5bd177d003186b1866b7db6555193b6b0a6fb5d0ff8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:03:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:03:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:03:44 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:03:44 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:45 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:03:45 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:03:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:45 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a51c434d3e5585e9156847ea11e9532f03ff2ce920cbe9fd83195f9f7353b5`  
		Last Modified: Mon, 10 Oct 2016 23:05:20 GMT  
		Size: 2.1 MB (2065024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adad8c5e3c7741f9691e0b679d0bb4c81f29da98e202c3cc38c257b770098d88`  
		Last Modified: Mon, 10 Oct 2016 23:05:22 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bcf21d4464c8c0da292128a901f1e5a358ce4537f6f5991f232b3542fb8611`  
		Last Modified: Mon, 10 Oct 2016 23:05:19 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d13e0e2d2d87c04b7de4175112073c169b4486d2154e4277856863fa69107b9`  
		Last Modified: Mon, 10 Oct 2016 23:05:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-dind`

```console
$ docker pull docker@sha256:4120fdfa50033ba8d3bb13edfd40da916403058283afa8503c6312dbdb590434
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5817feb393719bb0effed5bd177d003186b1866b7db6555193b6b0a6fb5d0ff8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:03:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:03:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:03:44 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:03:44 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:45 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:03:45 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:03:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:45 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a51c434d3e5585e9156847ea11e9532f03ff2ce920cbe9fd83195f9f7353b5`  
		Last Modified: Mon, 10 Oct 2016 23:05:20 GMT  
		Size: 2.1 MB (2065024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adad8c5e3c7741f9691e0b679d0bb4c81f29da98e202c3cc38c257b770098d88`  
		Last Modified: Mon, 10 Oct 2016 23:05:22 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bcf21d4464c8c0da292128a901f1e5a358ce4537f6f5991f232b3542fb8611`  
		Last Modified: Mon, 10 Oct 2016 23:05:19 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d13e0e2d2d87c04b7de4175112073c169b4486d2154e4277856863fa69107b9`  
		Last Modified: Mon, 10 Oct 2016 23:05:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:4120fdfa50033ba8d3bb13edfd40da916403058283afa8503c6312dbdb590434
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5817feb393719bb0effed5bd177d003186b1866b7db6555193b6b0a6fb5d0ff8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:03:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:03:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:03:44 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:03:44 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:45 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:03:45 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:03:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:45 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a51c434d3e5585e9156847ea11e9532f03ff2ce920cbe9fd83195f9f7353b5`  
		Last Modified: Mon, 10 Oct 2016 23:05:20 GMT  
		Size: 2.1 MB (2065024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adad8c5e3c7741f9691e0b679d0bb4c81f29da98e202c3cc38c257b770098d88`  
		Last Modified: Mon, 10 Oct 2016 23:05:22 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bcf21d4464c8c0da292128a901f1e5a358ce4537f6f5991f232b3542fb8611`  
		Last Modified: Mon, 10 Oct 2016 23:05:19 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d13e0e2d2d87c04b7de4175112073c169b4486d2154e4277856863fa69107b9`  
		Last Modified: Mon, 10 Oct 2016 23:05:19 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc3-git`

```console
$ docker pull docker@sha256:813ef603721ac9b41320842624c4d8d189ba49ab0753f122c545dbfb7019de94
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc3-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad90655502410761f155db113b719569402ac2d73baa34da575ba88826b52f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:47 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae065c834a32d2aeb1dd36acc4f89fac8d2030803683ae82db72e9e1828c4fc`  
		Last Modified: Mon, 10 Oct 2016 23:06:00 GMT  
		Size: 9.1 MB (9138551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-git`

```console
$ docker pull docker@sha256:813ef603721ac9b41320842624c4d8d189ba49ab0753f122c545dbfb7019de94
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad90655502410761f155db113b719569402ac2d73baa34da575ba88826b52f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:47 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae065c834a32d2aeb1dd36acc4f89fac8d2030803683ae82db72e9e1828c4fc`  
		Last Modified: Mon, 10 Oct 2016 23:06:00 GMT  
		Size: 9.1 MB (9138551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:813ef603721ac9b41320842624c4d8d189ba49ab0753f122c545dbfb7019de94
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad90655502410761f155db113b719569402ac2d73baa34da575ba88826b52f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:47 GMT
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae065c834a32d2aeb1dd36acc4f89fac8d2030803683ae82db72e9e1828c4fc`  
		Last Modified: Mon, 10 Oct 2016 23:06:00 GMT  
		Size: 9.1 MB (9138551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc3-experimental`

```console
$ docker pull docker@sha256:3324a7a0d7469bde0a072905b88f966e7d0a884f3b3a75253620e44ed3ae3f92
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc3-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69895c8ed63e4db44135e17602f9526b30dce0643d27d0132719d9475a686b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental`

```console
$ docker pull docker@sha256:3324a7a0d7469bde0a072905b88f966e7d0a884f3b3a75253620e44ed3ae3f92
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69895c8ed63e4db44135e17602f9526b30dce0643d27d0132719d9475a686b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental`

```console
$ docker pull docker@sha256:3324a7a0d7469bde0a072905b88f966e7d0a884f3b3a75253620e44ed3ae3f92
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69895c8ed63e4db44135e17602f9526b30dce0643d27d0132719d9475a686b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc3-experimental-dind`

```console
$ docker pull docker@sha256:f37f29c85e1ef2e9d2d9aa558fa5c56a679bc4f523f7df8d27a6ca71d030e778
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc3-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d49de4a0eba38529b49c0ef99891bae3922035a65092cbe818a02ac12d933dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:03:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:03:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:03:56 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:03:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:57 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:03:57 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:03:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:57 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a00a1e7474b78e29e6e6607f9e76778d1603bbbfd980890eb1bceaca3286de`  
		Last Modified: Mon, 10 Oct 2016 23:07:19 GMT  
		Size: 2.1 MB (2065053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2a23b6beaaff6288b6a271fa600248251dc990f1fe46ad4732e5ea6b32410b`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cae1d425d03cb2ecdd48555933316378b150e91d117d873011c16dc608f17c`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafbe8f0a5333bd3e5a9c21305d598bd6f70332b9bd37d6bc0ce602f9c588ad`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental-dind`

```console
$ docker pull docker@sha256:f37f29c85e1ef2e9d2d9aa558fa5c56a679bc4f523f7df8d27a6ca71d030e778
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d49de4a0eba38529b49c0ef99891bae3922035a65092cbe818a02ac12d933dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:03:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:03:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:03:56 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:03:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:57 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:03:57 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:03:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:57 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a00a1e7474b78e29e6e6607f9e76778d1603bbbfd980890eb1bceaca3286de`  
		Last Modified: Mon, 10 Oct 2016 23:07:19 GMT  
		Size: 2.1 MB (2065053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2a23b6beaaff6288b6a271fa600248251dc990f1fe46ad4732e5ea6b32410b`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cae1d425d03cb2ecdd48555933316378b150e91d117d873011c16dc608f17c`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafbe8f0a5333bd3e5a9c21305d598bd6f70332b9bd37d6bc0ce602f9c588ad`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental-dind`

```console
$ docker pull docker@sha256:f37f29c85e1ef2e9d2d9aa558fa5c56a679bc4f523f7df8d27a6ca71d030e778
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d49de4a0eba38529b49c0ef99891bae3922035a65092cbe818a02ac12d933dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:03:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:03:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:03:56 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:03:56 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:57 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:03:57 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:03:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:57 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a00a1e7474b78e29e6e6607f9e76778d1603bbbfd980890eb1bceaca3286de`  
		Last Modified: Mon, 10 Oct 2016 23:07:19 GMT  
		Size: 2.1 MB (2065053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2a23b6beaaff6288b6a271fa600248251dc990f1fe46ad4732e5ea6b32410b`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80cae1d425d03cb2ecdd48555933316378b150e91d117d873011c16dc608f17c`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafbe8f0a5333bd3e5a9c21305d598bd6f70332b9bd37d6bc0ce602f9c588ad`  
		Last Modified: Mon, 10 Oct 2016 23:07:18 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc3-experimental-git`

```console
$ docker pull docker@sha256:44d8bb4d6d3999e26a2072ec9f855d81ec27b065b3ce7ba289c1dfe148d97221
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc3-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79562f657be63a9b7d2666af375c3d1b26a720ea8a6fd8d63aae563439606d18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:59 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0471164ca0283df21033388e95d2a90f125db37106e60f891bc925a6da7884a`  
		Last Modified: Mon, 10 Oct 2016 23:07:57 GMT  
		Size: 9.1 MB (9138567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental-git`

```console
$ docker pull docker@sha256:44d8bb4d6d3999e26a2072ec9f855d81ec27b065b3ce7ba289c1dfe148d97221
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79562f657be63a9b7d2666af375c3d1b26a720ea8a6fd8d63aae563439606d18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:59 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0471164ca0283df21033388e95d2a90f125db37106e60f891bc925a6da7884a`  
		Last Modified: Mon, 10 Oct 2016 23:07:57 GMT  
		Size: 9.1 MB (9138567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental-git`

```console
$ docker pull docker@sha256:44d8bb4d6d3999e26a2072ec9f855d81ec27b065b3ce7ba289c1dfe148d97221
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79562f657be63a9b7d2666af375c3d1b26a720ea8a6fd8d63aae563439606d18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:03:59 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0471164ca0283df21033388e95d2a90f125db37106e60f891bc925a6da7884a`  
		Last Modified: Mon, 10 Oct 2016 23:07:57 GMT  
		Size: 9.1 MB (9138567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1`

```console
$ docker pull docker@sha256:5bd2bba340ab7e86695f9f9f5e21594f98308d227ac60b019ffb29aae490fe3f
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a059ea7356d5b5a9e0f6352bfa463e7bd4721c2ade3ef168603826e0de6fe54b`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:5bd2bba340ab7e86695f9f9f5e21594f98308d227ac60b019ffb29aae490fe3f
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a059ea7356d5b5a9e0f6352bfa463e7bd4721c2ade3ef168603826e0de6fe54b`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:5bd2bba340ab7e86695f9f9f5e21594f98308d227ac60b019ffb29aae490fe3f
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a059ea7356d5b5a9e0f6352bfa463e7bd4721c2ade3ef168603826e0de6fe54b`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:5bd2bba340ab7e86695f9f9f5e21594f98308d227ac60b019ffb29aae490fe3f
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31939445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a059ea7356d5b5a9e0f6352bfa463e7bd4721c2ade3ef168603826e0de6fe54b`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-dind`

```console
$ docker pull docker@sha256:fe2805a7097b3f88c36c5cdd7724b85d18f20f1a27ae9f46a093297b0f26a26b
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63384132523764a58b239155bba51de021bc12ebe1480b0c175e2989278c6e4a`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:04 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:05 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:06 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:06 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:06 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d035a1d911d94e0cf98e351e0a3006eee909e375652106147d12d216e9b4690`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 2.1 MB (2065035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437902ea69abab488ea4cd06b1a05c1b8ae6a80f035eb77a24c575fa45aa0db`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d770375fd77d3c4380f2437f4a56c4f9c476af9afd1992ec2788ea781ad52`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b632594e7f8ed640c12168524880f2c59423de76f2cad6ef04c4e65ca23b4a`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:fe2805a7097b3f88c36c5cdd7724b85d18f20f1a27ae9f46a093297b0f26a26b
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63384132523764a58b239155bba51de021bc12ebe1480b0c175e2989278c6e4a`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:04 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:05 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:06 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:06 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:06 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d035a1d911d94e0cf98e351e0a3006eee909e375652106147d12d216e9b4690`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 2.1 MB (2065035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437902ea69abab488ea4cd06b1a05c1b8ae6a80f035eb77a24c575fa45aa0db`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d770375fd77d3c4380f2437f4a56c4f9c476af9afd1992ec2788ea781ad52`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b632594e7f8ed640c12168524880f2c59423de76f2cad6ef04c4e65ca23b4a`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:fe2805a7097b3f88c36c5cdd7724b85d18f20f1a27ae9f46a093297b0f26a26b
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63384132523764a58b239155bba51de021bc12ebe1480b0c175e2989278c6e4a`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:04 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:05 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:06 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:06 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:06 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d035a1d911d94e0cf98e351e0a3006eee909e375652106147d12d216e9b4690`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 2.1 MB (2065035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437902ea69abab488ea4cd06b1a05c1b8ae6a80f035eb77a24c575fa45aa0db`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d770375fd77d3c4380f2437f4a56c4f9c476af9afd1992ec2788ea781ad52`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b632594e7f8ed640c12168524880f2c59423de76f2cad6ef04c4e65ca23b4a`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:fe2805a7097b3f88c36c5cdd7724b85d18f20f1a27ae9f46a093297b0f26a26b
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63384132523764a58b239155bba51de021bc12ebe1480b0c175e2989278c6e4a`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:04 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:05 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:06 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:06 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:06 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d035a1d911d94e0cf98e351e0a3006eee909e375652106147d12d216e9b4690`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 2.1 MB (2065035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437902ea69abab488ea4cd06b1a05c1b8ae6a80f035eb77a24c575fa45aa0db`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d770375fd77d3c4380f2437f4a56c4f9c476af9afd1992ec2788ea781ad52`  
		Last Modified: Mon, 10 Oct 2016 23:09:13 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b632594e7f8ed640c12168524880f2c59423de76f2cad6ef04c4e65ca23b4a`  
		Last Modified: Mon, 10 Oct 2016 23:09:14 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-git`

```console
$ docker pull docker@sha256:702505600674a15c9e6b437c54b2b441dcae48190874f1a463d0e54242bcb027
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa0bdca1d29bebedc974a0a8f509d4f0d6d2490a2e2211304813e0a755bd45f`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:08 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ad1dadd9e27b7b881d7f08716518f530b18177a6240185c89a60f6d181e2a6`  
		Last Modified: Mon, 10 Oct 2016 23:10:01 GMT  
		Size: 9.1 MB (9138537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:702505600674a15c9e6b437c54b2b441dcae48190874f1a463d0e54242bcb027
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa0bdca1d29bebedc974a0a8f509d4f0d6d2490a2e2211304813e0a755bd45f`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:08 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ad1dadd9e27b7b881d7f08716518f530b18177a6240185c89a60f6d181e2a6`  
		Last Modified: Mon, 10 Oct 2016 23:10:01 GMT  
		Size: 9.1 MB (9138537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:702505600674a15c9e6b437c54b2b441dcae48190874f1a463d0e54242bcb027
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa0bdca1d29bebedc974a0a8f509d4f0d6d2490a2e2211304813e0a755bd45f`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:08 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ad1dadd9e27b7b881d7f08716518f530b18177a6240185c89a60f6d181e2a6`  
		Last Modified: Mon, 10 Oct 2016 23:10:01 GMT  
		Size: 9.1 MB (9138537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:702505600674a15c9e6b437c54b2b441dcae48190874f1a463d0e54242bcb027
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41077982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa0bdca1d29bebedc974a0a8f509d4f0d6d2490a2e2211304813e0a755bd45f`
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
# Mon, 10 Oct 2016 23:04:00 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:00 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:08 GMT
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
	-	`sha256:92561b1806e91f8c84e3dedc2620b2f9dea68961483315d9b0d072fc9b3c4791`  
		Last Modified: Mon, 10 Oct 2016 23:08:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ad1dadd9e27b7b881d7f08716518f530b18177a6240185c89a60f6d181e2a6`  
		Last Modified: Mon, 10 Oct 2016 23:10:01 GMT  
		Size: 9.1 MB (9138537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental`

```console
$ docker pull docker@sha256:ddc9cd6fc614842f093d1f376dd7a56a9cce06e5a0e55ce39968c00fa41e67b6
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4862b3d32c1169b5b1f78b47c7be5dc033754fd79e984190a857a1bcd0de7ca0`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:ddc9cd6fc614842f093d1f376dd7a56a9cce06e5a0e55ce39968c00fa41e67b6
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4862b3d32c1169b5b1f78b47c7be5dc033754fd79e984190a857a1bcd0de7ca0`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:ddc9cd6fc614842f093d1f376dd7a56a9cce06e5a0e55ce39968c00fa41e67b6
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4862b3d32c1169b5b1f78b47c7be5dc033754fd79e984190a857a1bcd0de7ca0`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:ddc9cd6fc614842f093d1f376dd7a56a9cce06e5a0e55ce39968c00fa41e67b6
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32075330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4862b3d32c1169b5b1f78b47c7be5dc033754fd79e984190a857a1bcd0de7ca0`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental-dind`

```console
$ docker pull docker@sha256:7c0b761a9d2e9f436e4c2b93855992704a3a9725a5c21653d692a73aff4cb211
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fb91163057c8bb6d2b628b8615e20046bb03d87e9709776395e1df7e70ac82`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:13 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:13 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:14 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:14 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:14 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:15 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970ecfe0abcc5bdaf4be6870b85fa92ec96f06e0ec6634fc4b93aee7a372287`  
		Last Modified: Mon, 10 Oct 2016 23:11:30 GMT  
		Size: 2.1 MB (2065017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8646ec48df7db03fb120559243fcb07bc382330cf0eef62497617630dedd1b`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e3aef928709d7842713ba9a55b547c1154a056a69b1e719192b1419bb2a22`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91b4ad7f3e6e0ab233aa91387340291078c3025a2f2e5420166cd23478ac51e`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:7c0b761a9d2e9f436e4c2b93855992704a3a9725a5c21653d692a73aff4cb211
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fb91163057c8bb6d2b628b8615e20046bb03d87e9709776395e1df7e70ac82`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:13 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:13 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:14 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:14 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:14 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:15 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970ecfe0abcc5bdaf4be6870b85fa92ec96f06e0ec6634fc4b93aee7a372287`  
		Last Modified: Mon, 10 Oct 2016 23:11:30 GMT  
		Size: 2.1 MB (2065017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8646ec48df7db03fb120559243fcb07bc382330cf0eef62497617630dedd1b`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e3aef928709d7842713ba9a55b547c1154a056a69b1e719192b1419bb2a22`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91b4ad7f3e6e0ab233aa91387340291078c3025a2f2e5420166cd23478ac51e`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:7c0b761a9d2e9f436e4c2b93855992704a3a9725a5c21653d692a73aff4cb211
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fb91163057c8bb6d2b628b8615e20046bb03d87e9709776395e1df7e70ac82`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:13 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:13 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:14 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:14 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:14 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:15 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970ecfe0abcc5bdaf4be6870b85fa92ec96f06e0ec6634fc4b93aee7a372287`  
		Last Modified: Mon, 10 Oct 2016 23:11:30 GMT  
		Size: 2.1 MB (2065017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8646ec48df7db03fb120559243fcb07bc382330cf0eef62497617630dedd1b`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e3aef928709d7842713ba9a55b547c1154a056a69b1e719192b1419bb2a22`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91b4ad7f3e6e0ab233aa91387340291078c3025a2f2e5420166cd23478ac51e`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:7c0b761a9d2e9f436e4c2b93855992704a3a9725a5c21653d692a73aff4cb211
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34143982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fb91163057c8bb6d2b628b8615e20046bb03d87e9709776395e1df7e70ac82`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 10 Oct 2016 23:04:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 10 Oct 2016 23:04:13 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 10 Oct 2016 23:04:13 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 10 Oct 2016 23:04:14 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:14 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Oct 2016 23:04:14 GMT
EXPOSE 2375/tcp
# Mon, 10 Oct 2016 23:04:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:15 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970ecfe0abcc5bdaf4be6870b85fa92ec96f06e0ec6634fc4b93aee7a372287`  
		Last Modified: Mon, 10 Oct 2016 23:11:30 GMT  
		Size: 2.1 MB (2065017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8646ec48df7db03fb120559243fcb07bc382330cf0eef62497617630dedd1b`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17e3aef928709d7842713ba9a55b547c1154a056a69b1e719192b1419bb2a22`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91b4ad7f3e6e0ab233aa91387340291078c3025a2f2e5420166cd23478ac51e`  
		Last Modified: Mon, 10 Oct 2016 23:11:28 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental-git`

```console
$ docker pull docker@sha256:da3ea4be9b3ba9ce26dfb6ec964e3dc6484792144e6c144243e8c43929fe481d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d135eb867806373981356ee40fb5d6150b02978de8beea402190373b4414158c`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:17 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2fbbcf687323fb35b2868978d0fe2f8a7d4a1e9843334198e419daa8c702d`  
		Last Modified: Mon, 10 Oct 2016 23:12:19 GMT  
		Size: 9.1 MB (9138506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:da3ea4be9b3ba9ce26dfb6ec964e3dc6484792144e6c144243e8c43929fe481d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d135eb867806373981356ee40fb5d6150b02978de8beea402190373b4414158c`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:17 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2fbbcf687323fb35b2868978d0fe2f8a7d4a1e9843334198e419daa8c702d`  
		Last Modified: Mon, 10 Oct 2016 23:12:19 GMT  
		Size: 9.1 MB (9138506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:da3ea4be9b3ba9ce26dfb6ec964e3dc6484792144e6c144243e8c43929fe481d
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d135eb867806373981356ee40fb5d6150b02978de8beea402190373b4414158c`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:17 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2fbbcf687323fb35b2868978d0fe2f8a7d4a1e9843334198e419daa8c702d`  
		Last Modified: Mon, 10 Oct 2016 23:12:19 GMT  
		Size: 9.1 MB (9138506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:da3ea4be9b3ba9ce26dfb6ec964e3dc6484792144e6c144243e8c43929fe481d
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d135eb867806373981356ee40fb5d6150b02978de8beea402190373b4414158c`
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
# Mon, 10 Oct 2016 23:04:09 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:04:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:04:09 GMT
CMD ["sh"]
# Mon, 10 Oct 2016 23:04:17 GMT
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
	-	`sha256:18cea5a028e9c39933d3ba1361710c7c7c2513a901974fb20596721d5156058d`  
		Last Modified: Mon, 10 Oct 2016 23:10:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2fbbcf687323fb35b2868978d0fe2f8a7d4a1e9843334198e419daa8c702d`  
		Last Modified: Mon, 10 Oct 2016 23:12:19 GMT  
		Size: 9.1 MB (9138506 bytes)  
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
