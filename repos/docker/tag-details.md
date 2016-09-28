<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.2-rc1`](#docker1122-rc1)
-	[`docker:1.12-rc`](#docker112-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.12.2-rc1-dind`](#docker1122-rc1-dind)
-	[`docker:1.12-rc-dind`](#docker112-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.12.2-rc1-git`](#docker1122-rc1-git)
-	[`docker:1.12-rc-git`](#docker112-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.2-rc1-experimental`](#docker1122-rc1-experimental)
-	[`docker:1.12-rc-experimental`](#docker112-rc-experimental)
-	[`docker:rc-experimental`](#dockerrc-experimental)
-	[`docker:1.12.2-rc1-experimental-dind`](#docker1122-rc1-experimental-dind)
-	[`docker:1.12-rc-experimental-dind`](#docker112-rc-experimental-dind)
-	[`docker:rc-experimental-dind`](#dockerrc-experimental-dind)
-	[`docker:1.12.2-rc1-experimental-git`](#docker1122-rc1-experimental-git)
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

## `docker:1.12.2-rc1`

```console
$ docker pull docker@sha256:0a6652336b26d0abdfc50cc51f32c3eb4a557ecb8b9e6a1e11b457ce7ae6e6cf
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31974445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a71ed9a552352fa87f610a8c0a144cc2753de81a82adfd5af302c9589c8ceca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc`

```console
$ docker pull docker@sha256:129a5be9d883bd8b8dee3137a769271bb91befa19053e693d58c093b72626b47
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31909211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb386d00cd8dce0fa2ff4bd06f1c8e469b37e0281f35536b07ec692246d7e90c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:17:12 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 29 Jul 2016 16:30:33 GMT
ENV DOCKER_VERSION=1.12.0-rc5
# Fri, 29 Jul 2016 16:30:33 GMT
ENV DOCKER_SHA256=5f8d102b23c7a053b527bcab4ef42019e60e47d06e0094ebab4aece087db5ea2
# Fri, 29 Jul 2016 16:30:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-$DOCKER_VERSION.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 29 Jul 2016 16:30:39 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Fri, 29 Jul 2016 16:30:39 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:30:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37e8ba7d9dab65b32c92232f81d7b66716b1d5b2b6495ba9f930226df778cd7`  
		Last Modified: Fri, 29 Jul 2016 16:31:17 GMT  
		Size: 28.7 MB (28685451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafd306cabe9a410f56574897e784ccfd541bfb50d2d3e15fbd85cc3c18a3bce`  
		Last Modified: Fri, 29 Jul 2016 16:31:04 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:0a6652336b26d0abdfc50cc51f32c3eb4a557ecb8b9e6a1e11b457ce7ae6e6cf
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31974445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a71ed9a552352fa87f610a8c0a144cc2753de81a82adfd5af302c9589c8ceca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc1-dind`

```console
$ docker pull docker@sha256:3d8bbc033486f8212ca33f600b1158b2e175f10a951c14e304301893352e6fd3
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147770909b7d7c9237582f50a26f8551c329c773ce70c2c742bec3a27d7d4822`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 28 Sep 2016 20:49:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 28 Sep 2016 20:49:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 28 Sep 2016 20:49:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 28 Sep 2016 20:49:19 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:20 GMT
VOLUME [/var/lib/docker]
# Wed, 28 Sep 2016 20:49:20 GMT
EXPOSE 2375/tcp
# Wed, 28 Sep 2016 20:49:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:21 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfcab850f03494951bda2a5efc1c78b732807c5ff4f94925fcf4eeecf262f7b`  
		Last Modified: Wed, 28 Sep 2016 20:50:56 GMT  
		Size: 2.1 MB (2065060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7afad5076464ecdbce9a5a15e0b2583a2ea2460ebf4db75adfdf365b8488862`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797966f000d519fa78c987dfad60b559116a42212cdb2ad87a7f9b9e09f5edce`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b7bc7d0e0c9ecf3ac7a101dc69c291bb90a35f8bd34335c93edf3c73b263c2`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-dind`

```console
$ docker pull docker@sha256:3d8bbc033486f8212ca33f600b1158b2e175f10a951c14e304301893352e6fd3
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147770909b7d7c9237582f50a26f8551c329c773ce70c2c742bec3a27d7d4822`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 28 Sep 2016 20:49:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 28 Sep 2016 20:49:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 28 Sep 2016 20:49:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 28 Sep 2016 20:49:19 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:20 GMT
VOLUME [/var/lib/docker]
# Wed, 28 Sep 2016 20:49:20 GMT
EXPOSE 2375/tcp
# Wed, 28 Sep 2016 20:49:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:21 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfcab850f03494951bda2a5efc1c78b732807c5ff4f94925fcf4eeecf262f7b`  
		Last Modified: Wed, 28 Sep 2016 20:50:56 GMT  
		Size: 2.1 MB (2065060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7afad5076464ecdbce9a5a15e0b2583a2ea2460ebf4db75adfdf365b8488862`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797966f000d519fa78c987dfad60b559116a42212cdb2ad87a7f9b9e09f5edce`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b7bc7d0e0c9ecf3ac7a101dc69c291bb90a35f8bd34335c93edf3c73b263c2`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:3d8bbc033486f8212ca33f600b1158b2e175f10a951c14e304301893352e6fd3
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34043083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147770909b7d7c9237582f50a26f8551c329c773ce70c2c742bec3a27d7d4822`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 28 Sep 2016 20:49:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 28 Sep 2016 20:49:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 28 Sep 2016 20:49:19 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 28 Sep 2016 20:49:19 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:20 GMT
VOLUME [/var/lib/docker]
# Wed, 28 Sep 2016 20:49:20 GMT
EXPOSE 2375/tcp
# Wed, 28 Sep 2016 20:49:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:21 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfcab850f03494951bda2a5efc1c78b732807c5ff4f94925fcf4eeecf262f7b`  
		Last Modified: Wed, 28 Sep 2016 20:50:56 GMT  
		Size: 2.1 MB (2065060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7afad5076464ecdbce9a5a15e0b2583a2ea2460ebf4db75adfdf365b8488862`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797966f000d519fa78c987dfad60b559116a42212cdb2ad87a7f9b9e09f5edce`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b7bc7d0e0c9ecf3ac7a101dc69c291bb90a35f8bd34335c93edf3c73b263c2`  
		Last Modified: Wed, 28 Sep 2016 20:50:55 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc1-git`

```console
$ docker pull docker@sha256:1c6c0f0f08740fd94b40dc90850ded52c3c3ce0e43673cabdabcc667c0ca2421
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41112993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19682925e067a0f0a8d220ad1f30b0710369ea8488ee2aba81e9e35155f275f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:22 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77043fd7c20942c516640fd88f71cc95aa9991a54ed2a6d8e283d420299fd85c`  
		Last Modified: Wed, 28 Sep 2016 20:51:32 GMT  
		Size: 9.1 MB (9138548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-git`

```console
$ docker pull docker@sha256:1c6c0f0f08740fd94b40dc90850ded52c3c3ce0e43673cabdabcc667c0ca2421
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41112993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19682925e067a0f0a8d220ad1f30b0710369ea8488ee2aba81e9e35155f275f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:22 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77043fd7c20942c516640fd88f71cc95aa9991a54ed2a6d8e283d420299fd85c`  
		Last Modified: Wed, 28 Sep 2016 20:51:32 GMT  
		Size: 9.1 MB (9138548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:1c6c0f0f08740fd94b40dc90850ded52c3c3ce0e43673cabdabcc667c0ca2421
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41112993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19682925e067a0f0a8d220ad1f30b0710369ea8488ee2aba81e9e35155f275f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:08 GMT
ENV DOCKER_SHA256=0629b1681343ce333c5125670d63c2ca4e090f9d7de39f822ad35445eef124db
# Wed, 28 Sep 2016 20:49:12 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:12 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:13 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:22 GMT
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
	-	`sha256:34126b998a61be249482095d9bbb59689035cd9dd9c452073f7e3f3f46699617`  
		Last Modified: Wed, 28 Sep 2016 20:50:14 GMT  
		Size: 28.7 MB (28746014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da62528f60c2095c511a9ce542486382465c1905e263e1ef3c011646a4a5f5e`  
		Last Modified: Wed, 28 Sep 2016 20:50:02 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77043fd7c20942c516640fd88f71cc95aa9991a54ed2a6d8e283d420299fd85c`  
		Last Modified: Wed, 28 Sep 2016 20:51:32 GMT  
		Size: 9.1 MB (9138548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc1-experimental`

**does not exist** (yet?)

## `docker:1.12-rc-experimental`

```console
$ docker pull docker@sha256:0dd655a33239af8d346e07a8ed92270e96ac5a134c183db5836cc188475e9ed9
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32113661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04c845b4ba9e49f63c79b32282e34afea9a2bdcee34cf1ca32441db70008b9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental`

**does not exist** (yet?)

## `docker:1.12.2-rc1-experimental-dind`

```console
$ docker pull docker@sha256:6fa8aecca2f610eae9cf7f0d59a7a058820583d282f70e16fc25ed5408745cd0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34182303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bedc805fd7ae7313d7c218438f39e94ea3b72e1ee66c8aa155d3ebfcdfcfeafb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 28 Sep 2016 20:49:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 28 Sep 2016 20:49:39 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 28 Sep 2016 20:49:40 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 28 Sep 2016 20:49:45 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:45 GMT
VOLUME [/var/lib/docker]
# Wed, 28 Sep 2016 20:49:45 GMT
EXPOSE 2375/tcp
# Wed, 28 Sep 2016 20:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:46 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1abd1f25fae6fc741478b8c6e537bc38c6efa4ad06432e403ad5fab93596688`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 2.1 MB (2065061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ffa81b39c7baad7e80b911950d0450d10f98594041acfa2a3f589b78e705dc`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e6585454ee120f225406f06de1e6bf44e1d8fecc0afc5fb01f44f9e80ff06e`  
		Last Modified: Wed, 28 Sep 2016 20:53:15 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f6268223548056c9e8823c11594e2c8c593744a3d2ee296ebc66465cc03a0c`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental-dind`

```console
$ docker pull docker@sha256:6fa8aecca2f610eae9cf7f0d59a7a058820583d282f70e16fc25ed5408745cd0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34182303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bedc805fd7ae7313d7c218438f39e94ea3b72e1ee66c8aa155d3ebfcdfcfeafb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 28 Sep 2016 20:49:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 28 Sep 2016 20:49:39 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 28 Sep 2016 20:49:40 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 28 Sep 2016 20:49:45 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:45 GMT
VOLUME [/var/lib/docker]
# Wed, 28 Sep 2016 20:49:45 GMT
EXPOSE 2375/tcp
# Wed, 28 Sep 2016 20:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:46 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1abd1f25fae6fc741478b8c6e537bc38c6efa4ad06432e403ad5fab93596688`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 2.1 MB (2065061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ffa81b39c7baad7e80b911950d0450d10f98594041acfa2a3f589b78e705dc`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e6585454ee120f225406f06de1e6bf44e1d8fecc0afc5fb01f44f9e80ff06e`  
		Last Modified: Wed, 28 Sep 2016 20:53:15 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f6268223548056c9e8823c11594e2c8c593744a3d2ee296ebc66465cc03a0c`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental-dind`

```console
$ docker pull docker@sha256:6fa8aecca2f610eae9cf7f0d59a7a058820583d282f70e16fc25ed5408745cd0
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34182303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bedc805fd7ae7313d7c218438f39e94ea3b72e1ee66c8aa155d3ebfcdfcfeafb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 28 Sep 2016 20:49:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 28 Sep 2016 20:49:39 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 28 Sep 2016 20:49:40 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 28 Sep 2016 20:49:45 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:45 GMT
VOLUME [/var/lib/docker]
# Wed, 28 Sep 2016 20:49:45 GMT
EXPOSE 2375/tcp
# Wed, 28 Sep 2016 20:49:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:46 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1abd1f25fae6fc741478b8c6e537bc38c6efa4ad06432e403ad5fab93596688`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 2.1 MB (2065061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ffa81b39c7baad7e80b911950d0450d10f98594041acfa2a3f589b78e705dc`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e6585454ee120f225406f06de1e6bf44e1d8fecc0afc5fb01f44f9e80ff06e`  
		Last Modified: Wed, 28 Sep 2016 20:53:15 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f6268223548056c9e8823c11594e2c8c593744a3d2ee296ebc66465cc03a0c`  
		Last Modified: Wed, 28 Sep 2016 20:53:14 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc1-experimental-git`

```console
$ docker pull docker@sha256:57fb8532b97c278068893d316c53c898de692f533b9013404e40c4e0aab564d0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41252217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d656bd186b469b2218e35fa0fcad946ce619461e898a5cd8c956c57241212637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:48 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ab309a165b28b093c2183c17200443a6590536af583405b0f11fef35e457a`  
		Last Modified: Wed, 28 Sep 2016 20:53:56 GMT  
		Size: 9.1 MB (9138556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental-git`

```console
$ docker pull docker@sha256:57fb8532b97c278068893d316c53c898de692f533b9013404e40c4e0aab564d0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41252217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d656bd186b469b2218e35fa0fcad946ce619461e898a5cd8c956c57241212637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:48 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ab309a165b28b093c2183c17200443a6590536af583405b0f11fef35e457a`  
		Last Modified: Wed, 28 Sep 2016 20:53:56 GMT  
		Size: 9.1 MB (9138556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental-git`

```console
$ docker pull docker@sha256:57fb8532b97c278068893d316c53c898de692f533b9013404e40c4e0aab564d0
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41252217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d656bd186b469b2218e35fa0fcad946ce619461e898a5cd8c956c57241212637`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_VERSION=1.12.2-rc1
# Wed, 28 Sep 2016 20:49:23 GMT
ENV DOCKER_SHA256=d3096cd00f8386e5180c24c7d93284a725577194b43404960029f861fd5a71db
# Wed, 28 Sep 2016 20:49:30 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 28 Sep 2016 20:49:35 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 28 Sep 2016 20:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:49:35 GMT
CMD ["sh"]
# Wed, 28 Sep 2016 20:49:48 GMT
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
	-	`sha256:14d929ed1b815c6bbdc077a735ac7d2cdf1c6f0e90827013fd64d5f6a3365eec`  
		Last Modified: Wed, 28 Sep 2016 20:52:27 GMT  
		Size: 28.9 MB (28885230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f643d591089ee9d0ff7234cafa746f94c205ec40a63e5eef7711ce9fec362cc`  
		Last Modified: Wed, 28 Sep 2016 20:52:14 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ab309a165b28b093c2183c17200443a6590536af583405b0f11fef35e457a`  
		Last Modified: Wed, 28 Sep 2016 20:53:56 GMT  
		Size: 9.1 MB (9138556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull docker@sha256:7f587534e2ffdde8e2e28b4041dd4ca608c6ab60b06e5a1c3cee062079b57270
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

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
