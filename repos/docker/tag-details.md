<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.2-rc2`](#docker1122-rc2)
-	[`docker:1.12-rc`](#docker112-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.12.2-rc2-dind`](#docker1122-rc2-dind)
-	[`docker:1.12-rc-dind`](#docker112-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.12.2-rc2-git`](#docker1122-rc2-git)
-	[`docker:1.12-rc-git`](#docker112-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.2-rc2-experimental`](#docker1122-rc2-experimental)
-	[`docker:1.12-rc-experimental`](#docker112-rc-experimental)
-	[`docker:rc-experimental`](#dockerrc-experimental)
-	[`docker:1.12.2-rc2-experimental-dind`](#docker1122-rc2-experimental-dind)
-	[`docker:1.12-rc-experimental-dind`](#docker112-rc-experimental-dind)
-	[`docker:rc-experimental-dind`](#dockerrc-experimental-dind)
-	[`docker:1.12.2-rc2-experimental-git`](#docker1122-rc2-experimental-git)
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

## `docker:1.12.2-rc2`

```console
$ docker pull docker@sha256:68d9f91377e11849041fe895da601a8475f5ffd01d0b4c596386d60bf22016a4
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31975844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7159678f1d35eacd14bb42d68a9c92c9f75a23eb94156ac41add7bdcbb5e89ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc`

```console
$ docker pull docker@sha256:68d9f91377e11849041fe895da601a8475f5ffd01d0b4c596386d60bf22016a4
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31975844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7159678f1d35eacd14bb42d68a9c92c9f75a23eb94156ac41add7bdcbb5e89ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
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

## `docker:1.12.2-rc2-dind`

```console
$ docker pull docker@sha256:75bf1df1b7e55607666642711b07e0f0e58a3250a37f7063aa755683c1d1a387
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34044473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33293d2425000498c7bbb361e29732ae545e9013156426cfbc9ce5c339711573`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 05 Oct 2016 20:21:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Oct 2016 20:21:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 05 Oct 2016 20:21:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 05 Oct 2016 20:21:12 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:12 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Oct 2016 20:21:12 GMT
EXPOSE 2375/tcp
# Wed, 05 Oct 2016 20:21:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:13 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf9b6e2bb33f5041f8c87e31b850221346836bdfdac0051353f23ba0f9b51f3`  
		Last Modified: Wed, 05 Oct 2016 20:22:30 GMT  
		Size: 2.1 MB (2065054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada89e9f79557615fefa37b0ddc4d1c7ea58d7058ca47eac480232a073077e55`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186516ac8ec6dc99bf4f38a52361908013d69cfc5824673f51660dd922e9675d`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cd0ffd11f26cb4fb51861b24750204112e93b228b47e5303f4c40ebc75d06d`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-dind`

```console
$ docker pull docker@sha256:75bf1df1b7e55607666642711b07e0f0e58a3250a37f7063aa755683c1d1a387
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34044473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33293d2425000498c7bbb361e29732ae545e9013156426cfbc9ce5c339711573`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 05 Oct 2016 20:21:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Oct 2016 20:21:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 05 Oct 2016 20:21:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 05 Oct 2016 20:21:12 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:12 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Oct 2016 20:21:12 GMT
EXPOSE 2375/tcp
# Wed, 05 Oct 2016 20:21:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:13 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf9b6e2bb33f5041f8c87e31b850221346836bdfdac0051353f23ba0f9b51f3`  
		Last Modified: Wed, 05 Oct 2016 20:22:30 GMT  
		Size: 2.1 MB (2065054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada89e9f79557615fefa37b0ddc4d1c7ea58d7058ca47eac480232a073077e55`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186516ac8ec6dc99bf4f38a52361908013d69cfc5824673f51660dd922e9675d`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cd0ffd11f26cb4fb51861b24750204112e93b228b47e5303f4c40ebc75d06d`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:75bf1df1b7e55607666642711b07e0f0e58a3250a37f7063aa755683c1d1a387
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34044473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33293d2425000498c7bbb361e29732ae545e9013156426cfbc9ce5c339711573`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 05 Oct 2016 20:21:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Oct 2016 20:21:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 05 Oct 2016 20:21:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 05 Oct 2016 20:21:12 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:12 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Oct 2016 20:21:12 GMT
EXPOSE 2375/tcp
# Wed, 05 Oct 2016 20:21:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:13 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf9b6e2bb33f5041f8c87e31b850221346836bdfdac0051353f23ba0f9b51f3`  
		Last Modified: Wed, 05 Oct 2016 20:22:30 GMT  
		Size: 2.1 MB (2065054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada89e9f79557615fefa37b0ddc4d1c7ea58d7058ca47eac480232a073077e55`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186516ac8ec6dc99bf4f38a52361908013d69cfc5824673f51660dd922e9675d`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cd0ffd11f26cb4fb51861b24750204112e93b228b47e5303f4c40ebc75d06d`  
		Last Modified: Wed, 05 Oct 2016 20:22:29 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc2-git`

**does not exist** (yet?)

## `docker:1.12-rc-git`

```console
$ docker pull docker@sha256:cb8ba6eefb49daefa8def182e6d76ab7aafa2ae1a9cfceff287a050a9681e45c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3af9389db0ad2853babf787da2202126a705e96f262116e5513a5e616416b0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:15 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b0bffa66bdbc08ff0e399631003517dd5165a194c47c3ffbd5b4fa9f9dbe6`  
		Last Modified: Wed, 05 Oct 2016 20:23:09 GMT  
		Size: 9.1 MB (9138572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:cb8ba6eefb49daefa8def182e6d76ab7aafa2ae1a9cfceff287a050a9681e45c
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41114416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3af9389db0ad2853babf787da2202126a705e96f262116e5513a5e616416b0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:01 GMT
ENV DOCKER_SHA256=dde4b9f3142a9ba38f95a58ea0005b40a3da9e8c5c8f7fe35710be3c71c6ff6b
# Wed, 05 Oct 2016 20:21:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:05 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:06 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:15 GMT
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
	-	`sha256:64debd848a6e8b0bb7df8c97f4b0fc6828e329ab6c281643cba7c67cc417dcf7`  
		Last Modified: Wed, 05 Oct 2016 20:21:54 GMT  
		Size: 28.7 MB (28747414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3563e2beb703e271ec1808a497fbb010f4d6c6bea48291566cf6b841444b4ea4`  
		Last Modified: Wed, 05 Oct 2016 20:21:42 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832b0bffa66bdbc08ff0e399631003517dd5165a194c47c3ffbd5b4fa9f9dbe6`  
		Last Modified: Wed, 05 Oct 2016 20:23:09 GMT  
		Size: 9.1 MB (9138572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc2-experimental`

```console
$ docker pull docker@sha256:2c43e7fad3d89e76a3e7b3e87b5e50d13e0250401acab127239d1da902a0cd9c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc2-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32114879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80eb2561a6e61c579524892fd3234f20b62813d3e9a87248d839bbdc12b95201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental`

```console
$ docker pull docker@sha256:2c43e7fad3d89e76a3e7b3e87b5e50d13e0250401acab127239d1da902a0cd9c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32114879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80eb2561a6e61c579524892fd3234f20b62813d3e9a87248d839bbdc12b95201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental`

```console
$ docker pull docker@sha256:2c43e7fad3d89e76a3e7b3e87b5e50d13e0250401acab127239d1da902a0cd9c
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32114879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80eb2561a6e61c579524892fd3234f20b62813d3e9a87248d839bbdc12b95201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc2-experimental-dind`

```console
$ docker pull docker@sha256:10da5d1c1245e47f9407ce0ad4af6b10bfd5e04c24d67c6d7b052b3b45ac9e6d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc2-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34183493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf441400eea7ce17c3994d01941d37177607c43cabb1054e38650d3dbc3500c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:27 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 05 Oct 2016 20:21:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Oct 2016 20:21:28 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 05 Oct 2016 20:21:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 05 Oct 2016 20:21:29 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:29 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Oct 2016 20:21:30 GMT
EXPOSE 2375/tcp
# Wed, 05 Oct 2016 20:21:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:30 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30c8d8bd864e4195b12f8cb821da9b09565d9dc34427c395c055db7c2b564f`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 2.1 MB (2065038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07a0ddb174f5a52748e9088eb8b90bbf0ace79e7519391b0114bfba2d49c4c9`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830d8dd2a5ed69bff591e06f8a5bc13f2a5acb790eb5dfcf593840f58cb66f81`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e8381963a81a52a1a4fb4d996a772e1f42c1ae206734154eb0ebfead4e3a88`  
		Last Modified: Wed, 05 Oct 2016 20:24:35 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental-dind`

```console
$ docker pull docker@sha256:10da5d1c1245e47f9407ce0ad4af6b10bfd5e04c24d67c6d7b052b3b45ac9e6d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34183493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf441400eea7ce17c3994d01941d37177607c43cabb1054e38650d3dbc3500c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:27 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 05 Oct 2016 20:21:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Oct 2016 20:21:28 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 05 Oct 2016 20:21:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 05 Oct 2016 20:21:29 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:29 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Oct 2016 20:21:30 GMT
EXPOSE 2375/tcp
# Wed, 05 Oct 2016 20:21:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:30 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30c8d8bd864e4195b12f8cb821da9b09565d9dc34427c395c055db7c2b564f`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 2.1 MB (2065038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07a0ddb174f5a52748e9088eb8b90bbf0ace79e7519391b0114bfba2d49c4c9`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830d8dd2a5ed69bff591e06f8a5bc13f2a5acb790eb5dfcf593840f58cb66f81`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e8381963a81a52a1a4fb4d996a772e1f42c1ae206734154eb0ebfead4e3a88`  
		Last Modified: Wed, 05 Oct 2016 20:24:35 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental-dind`

```console
$ docker pull docker@sha256:10da5d1c1245e47f9407ce0ad4af6b10bfd5e04c24d67c6d7b052b3b45ac9e6d
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34183493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf441400eea7ce17c3994d01941d37177607c43cabb1054e38650d3dbc3500c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:27 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 05 Oct 2016 20:21:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Oct 2016 20:21:28 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 05 Oct 2016 20:21:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 05 Oct 2016 20:21:29 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:29 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Oct 2016 20:21:30 GMT
EXPOSE 2375/tcp
# Wed, 05 Oct 2016 20:21:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:30 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30c8d8bd864e4195b12f8cb821da9b09565d9dc34427c395c055db7c2b564f`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 2.1 MB (2065038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07a0ddb174f5a52748e9088eb8b90bbf0ace79e7519391b0114bfba2d49c4c9`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830d8dd2a5ed69bff591e06f8a5bc13f2a5acb790eb5dfcf593840f58cb66f81`  
		Last Modified: Wed, 05 Oct 2016 20:24:36 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e8381963a81a52a1a4fb4d996a772e1f42c1ae206734154eb0ebfead4e3a88`  
		Last Modified: Wed, 05 Oct 2016 20:24:35 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-rc2-experimental-git`

```console
$ docker pull docker@sha256:d46af494df27fcf9abb9705dc3e51122b6cc13e0747eff83576f37666c998bac
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-rc2-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41253443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ded330d1aa07790be8cc803aa17b3833eb9eac8d3d5f96948f93a3e083d166c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:32 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cceff19abe673536561e26e4584b193e88b079454d02fb1b22168a59cfba51`  
		Last Modified: Wed, 05 Oct 2016 20:25:12 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-rc-experimental-git`

```console
$ docker pull docker@sha256:d46af494df27fcf9abb9705dc3e51122b6cc13e0747eff83576f37666c998bac
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-rc-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41253443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ded330d1aa07790be8cc803aa17b3833eb9eac8d3d5f96948f93a3e083d166c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:32 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cceff19abe673536561e26e4584b193e88b079454d02fb1b22168a59cfba51`  
		Last Modified: Wed, 05 Oct 2016 20:25:12 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-experimental-git`

```console
$ docker pull docker@sha256:d46af494df27fcf9abb9705dc3e51122b6cc13e0747eff83576f37666c998bac
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41253443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ded330d1aa07790be8cc803aa17b3833eb9eac8d3d5f96948f93a3e083d166c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 05 Oct 2016 20:21:15 GMT
ENV DOCKER_VERSION=1.12.2-rc2
# Wed, 05 Oct 2016 20:21:16 GMT
ENV DOCKER_SHA256=61758c2d92d8e4a3c39ad8c0766c4ae2de76da8814d7986efdb9483ba35d934e
# Wed, 05 Oct 2016 20:21:23 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 05 Oct 2016 20:21:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Wed, 05 Oct 2016 20:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:21:24 GMT
CMD ["sh"]
# Wed, 05 Oct 2016 20:21:32 GMT
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
	-	`sha256:f4fc6cf58f61b7586eb5fecc8653183645164dbd9a8fa04b60362dc74a7fb6ff`  
		Last Modified: Wed, 05 Oct 2016 20:23:56 GMT  
		Size: 28.9 MB (28886446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565862d4f659d1b49d3c7202b080a10be7ee53a240766ca3674c15caab4cbaa`  
		Last Modified: Wed, 05 Oct 2016 20:23:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cceff19abe673536561e26e4584b193e88b079454d02fb1b22168a59cfba51`  
		Last Modified: Wed, 05 Oct 2016 20:25:12 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1`

```console
$ docker pull docker@sha256:f93bdfbe356eebf39c99c190adfed19d465487988a36af0695d4dab790a42c39
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
$ docker pull docker@sha256:f93bdfbe356eebf39c99c190adfed19d465487988a36af0695d4dab790a42c39
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
$ docker pull docker@sha256:f93bdfbe356eebf39c99c190adfed19d465487988a36af0695d4dab790a42c39
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
$ docker pull docker@sha256:f93bdfbe356eebf39c99c190adfed19d465487988a36af0695d4dab790a42c39
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
$ docker pull docker@sha256:fe2b9a8aa2f1285a5ca62533e46f061924b4970c6aebfbddc4be38ffe928e9a7
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
$ docker pull docker@sha256:fe2b9a8aa2f1285a5ca62533e46f061924b4970c6aebfbddc4be38ffe928e9a7
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
$ docker pull docker@sha256:fe2b9a8aa2f1285a5ca62533e46f061924b4970c6aebfbddc4be38ffe928e9a7
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
$ docker pull docker@sha256:fe2b9a8aa2f1285a5ca62533e46f061924b4970c6aebfbddc4be38ffe928e9a7
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
$ docker pull docker@sha256:1a1bfd53fa1ebe7d32e2ca7a4a6a28f33422bdf456947968d395ddfc9162c45b
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
$ docker pull docker@sha256:1a1bfd53fa1ebe7d32e2ca7a4a6a28f33422bdf456947968d395ddfc9162c45b
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
$ docker pull docker@sha256:1a1bfd53fa1ebe7d32e2ca7a4a6a28f33422bdf456947968d395ddfc9162c45b
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
$ docker pull docker@sha256:1a1bfd53fa1ebe7d32e2ca7a4a6a28f33422bdf456947968d395ddfc9162c45b
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
$ docker pull docker@sha256:5d0583f976a3988e31c5cfdf9ee191add62e5c1de6c4d00bfaee0285d9962fcf
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
$ docker pull docker@sha256:5d0583f976a3988e31c5cfdf9ee191add62e5c1de6c4d00bfaee0285d9962fcf
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
$ docker pull docker@sha256:5d0583f976a3988e31c5cfdf9ee191add62e5c1de6c4d00bfaee0285d9962fcf
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
$ docker pull docker@sha256:5d0583f976a3988e31c5cfdf9ee191add62e5c1de6c4d00bfaee0285d9962fcf
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
$ docker pull docker@sha256:42db886646228dc89f45208cb5e6b8f6688b80175c9ec610e2a51e6ccba6d209
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
$ docker pull docker@sha256:42db886646228dc89f45208cb5e6b8f6688b80175c9ec610e2a51e6ccba6d209
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
$ docker pull docker@sha256:42db886646228dc89f45208cb5e6b8f6688b80175c9ec610e2a51e6ccba6d209
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
$ docker pull docker@sha256:42db886646228dc89f45208cb5e6b8f6688b80175c9ec610e2a51e6ccba6d209
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
$ docker pull docker@sha256:2af6950f151f6a02fa11021f596db1b5f6d3386c88586462966809e18312e183
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
$ docker pull docker@sha256:2af6950f151f6a02fa11021f596db1b5f6d3386c88586462966809e18312e183
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
$ docker pull docker@sha256:2af6950f151f6a02fa11021f596db1b5f6d3386c88586462966809e18312e183
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
$ docker pull docker@sha256:2af6950f151f6a02fa11021f596db1b5f6d3386c88586462966809e18312e183
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
$ docker pull docker@sha256:9d643ef4a94d67e527d97cae0e6157d9998d81a2137294953dfada840a16756a
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
$ docker pull docker@sha256:9d643ef4a94d67e527d97cae0e6157d9998d81a2137294953dfada840a16756a
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
$ docker pull docker@sha256:f16a8e6cddc97a0949181057727832d87ade69c81977e14972e5adf3714a7796
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
$ docker pull docker@sha256:f16a8e6cddc97a0949181057727832d87ade69c81977e14972e5adf3714a7796
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
$ docker pull docker@sha256:e430ac8a9fc6d3e8df6706b0750f01928ff783931e2a56cb6ffe6e3f567b2a99
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
$ docker pull docker@sha256:e430ac8a9fc6d3e8df6706b0750f01928ff783931e2a56cb6ffe6e3f567b2a99
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
