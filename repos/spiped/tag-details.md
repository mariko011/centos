<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1.5.0`](#spiped150)
-	[`spiped:1.5`](#spiped15)
-	[`spiped:1`](#spiped1)
-	[`spiped:latest`](#spipedlatest)
-	[`spiped:1.5.0-alpine`](#spiped150-alpine)
-	[`spiped:1.5-alpine`](#spiped15-alpine)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:alpine`](#spipedalpine)

## `spiped:1.5.0`

```console
$ docker pull spiped@sha256:80e7348817cf67e70cd1cc34c62e87ea592584184e710f84c88b1aa34117af2b
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55605407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d215c4010c87077fc3f5600f1e2dd4d0511e35e09efb23b75144eb313fc48a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:42:15 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 23:42:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Sep 2016 23:42:23 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 23:42:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 23:42:24 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 23:42:51 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:42:52 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 23:42:52 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 23:42:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a3142e86705b8aab84a1b79ba3797f9cf17821592cb4e34658145a691ad9d3`  
		Last Modified: Fri, 23 Sep 2016 23:43:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bf31813ea7dc992fc0a10a60b9b347fc6ca72c326ba6bb0418f3f7d6728c3`  
		Last Modified: Fri, 23 Sep 2016 23:43:03 GMT  
		Size: 1.7 MB (1690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec65ade24a52277a043ed627eed639fc2a80dfe6d27f95be51bcc2c95377691`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd145ff8dfd27fe6d248b7b9537745c6d2f1d48a306f78159d436fc5c3338406`  
		Last Modified: Fri, 23 Sep 2016 23:43:02 GMT  
		Size: 2.6 MB (2557035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee17f939bd4af637877db0729ed73ec5d5148de12df92f89f018d1717626e3`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af4c685b5c8b6bd93b70a5740ffe54175534fc02ea6369a513e01e375b0f491`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5`

```console
$ docker pull spiped@sha256:80e7348817cf67e70cd1cc34c62e87ea592584184e710f84c88b1aa34117af2b
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55605407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d215c4010c87077fc3f5600f1e2dd4d0511e35e09efb23b75144eb313fc48a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:42:15 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 23:42:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Sep 2016 23:42:23 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 23:42:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 23:42:24 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 23:42:51 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:42:52 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 23:42:52 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 23:42:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a3142e86705b8aab84a1b79ba3797f9cf17821592cb4e34658145a691ad9d3`  
		Last Modified: Fri, 23 Sep 2016 23:43:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bf31813ea7dc992fc0a10a60b9b347fc6ca72c326ba6bb0418f3f7d6728c3`  
		Last Modified: Fri, 23 Sep 2016 23:43:03 GMT  
		Size: 1.7 MB (1690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec65ade24a52277a043ed627eed639fc2a80dfe6d27f95be51bcc2c95377691`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd145ff8dfd27fe6d248b7b9537745c6d2f1d48a306f78159d436fc5c3338406`  
		Last Modified: Fri, 23 Sep 2016 23:43:02 GMT  
		Size: 2.6 MB (2557035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee17f939bd4af637877db0729ed73ec5d5148de12df92f89f018d1717626e3`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af4c685b5c8b6bd93b70a5740ffe54175534fc02ea6369a513e01e375b0f491`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:80e7348817cf67e70cd1cc34c62e87ea592584184e710f84c88b1aa34117af2b
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55605407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d215c4010c87077fc3f5600f1e2dd4d0511e35e09efb23b75144eb313fc48a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:42:15 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 23:42:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Sep 2016 23:42:23 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 23:42:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 23:42:24 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 23:42:51 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:42:52 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 23:42:52 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 23:42:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a3142e86705b8aab84a1b79ba3797f9cf17821592cb4e34658145a691ad9d3`  
		Last Modified: Fri, 23 Sep 2016 23:43:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bf31813ea7dc992fc0a10a60b9b347fc6ca72c326ba6bb0418f3f7d6728c3`  
		Last Modified: Fri, 23 Sep 2016 23:43:03 GMT  
		Size: 1.7 MB (1690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec65ade24a52277a043ed627eed639fc2a80dfe6d27f95be51bcc2c95377691`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd145ff8dfd27fe6d248b7b9537745c6d2f1d48a306f78159d436fc5c3338406`  
		Last Modified: Fri, 23 Sep 2016 23:43:02 GMT  
		Size: 2.6 MB (2557035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee17f939bd4af637877db0729ed73ec5d5148de12df92f89f018d1717626e3`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af4c685b5c8b6bd93b70a5740ffe54175534fc02ea6369a513e01e375b0f491`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:80e7348817cf67e70cd1cc34c62e87ea592584184e710f84c88b1aa34117af2b
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55605407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d215c4010c87077fc3f5600f1e2dd4d0511e35e09efb23b75144eb313fc48a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:42:15 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 23:42:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Sep 2016 23:42:23 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 23:42:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 23:42:24 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 23:42:51 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:42:52 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 23:42:52 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 23:42:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a3142e86705b8aab84a1b79ba3797f9cf17821592cb4e34658145a691ad9d3`  
		Last Modified: Fri, 23 Sep 2016 23:43:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bf31813ea7dc992fc0a10a60b9b347fc6ca72c326ba6bb0418f3f7d6728c3`  
		Last Modified: Fri, 23 Sep 2016 23:43:03 GMT  
		Size: 1.7 MB (1690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec65ade24a52277a043ed627eed639fc2a80dfe6d27f95be51bcc2c95377691`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd145ff8dfd27fe6d248b7b9537745c6d2f1d48a306f78159d436fc5c3338406`  
		Last Modified: Fri, 23 Sep 2016 23:43:02 GMT  
		Size: 2.6 MB (2557035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee17f939bd4af637877db0729ed73ec5d5148de12df92f89f018d1717626e3`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af4c685b5c8b6bd93b70a5740ffe54175534fc02ea6369a513e01e375b0f491`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5.0-alpine`

```console
$ docker pull spiped@sha256:fe78941c58bbf5fd78b551fee5a6046f18854fa1d27c218991c3d4558d086095
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b90a808fd29e6fe3ff1c21a831930218dfe873005666067e6e871f0b2c67eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:35:51 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 18:35:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 23 Sep 2016 18:35:53 GMT
RUN apk add --no-cache libssl1.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 18:35:55 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 18:36:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 23 Sep 2016 18:36:02 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 18:36:02 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 18:36:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:36:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:36:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe4f871008474bebdf9156926b07fc237b7ae8668963686e69a9b650d3b0a8`  
		Last Modified: Fri, 23 Sep 2016 18:36:16 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec09314e1bd48c12c64c9aef8cd8e060646161eefe43ca7f9fa18bd0d7303209`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 5.3 KB (5258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c99877deb7c1fa9715bbf9888b3cabbe2822676b2d6cdbcef2092c15dc1f7d`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffb79fd2291dd2bd593ddbb12eee1b7f3be721ed8dfd93145ebe4de6ed5df0b`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 66.6 KB (66619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf854c32b6e5b4c169eafff9ffc2727847effd2eac2c6512b08a8810a6cffd1`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395b73083683c2e9066aa384413b230070213569794e3769b9b0770f8dc4f85f`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.5-alpine`

```console
$ docker pull spiped@sha256:fe78941c58bbf5fd78b551fee5a6046f18854fa1d27c218991c3d4558d086095
```

-	Platforms:
	-	linux; amd64

### `spiped:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b90a808fd29e6fe3ff1c21a831930218dfe873005666067e6e871f0b2c67eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:35:51 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 18:35:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 23 Sep 2016 18:35:53 GMT
RUN apk add --no-cache libssl1.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 18:35:55 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 18:36:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 23 Sep 2016 18:36:02 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 18:36:02 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 18:36:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:36:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:36:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe4f871008474bebdf9156926b07fc237b7ae8668963686e69a9b650d3b0a8`  
		Last Modified: Fri, 23 Sep 2016 18:36:16 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec09314e1bd48c12c64c9aef8cd8e060646161eefe43ca7f9fa18bd0d7303209`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 5.3 KB (5258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c99877deb7c1fa9715bbf9888b3cabbe2822676b2d6cdbcef2092c15dc1f7d`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffb79fd2291dd2bd593ddbb12eee1b7f3be721ed8dfd93145ebe4de6ed5df0b`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 66.6 KB (66619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf854c32b6e5b4c169eafff9ffc2727847effd2eac2c6512b08a8810a6cffd1`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395b73083683c2e9066aa384413b230070213569794e3769b9b0770f8dc4f85f`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:fe78941c58bbf5fd78b551fee5a6046f18854fa1d27c218991c3d4558d086095
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b90a808fd29e6fe3ff1c21a831930218dfe873005666067e6e871f0b2c67eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:35:51 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 18:35:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 23 Sep 2016 18:35:53 GMT
RUN apk add --no-cache libssl1.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 18:35:55 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 18:36:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 23 Sep 2016 18:36:02 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 18:36:02 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 18:36:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:36:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:36:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe4f871008474bebdf9156926b07fc237b7ae8668963686e69a9b650d3b0a8`  
		Last Modified: Fri, 23 Sep 2016 18:36:16 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec09314e1bd48c12c64c9aef8cd8e060646161eefe43ca7f9fa18bd0d7303209`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 5.3 KB (5258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c99877deb7c1fa9715bbf9888b3cabbe2822676b2d6cdbcef2092c15dc1f7d`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffb79fd2291dd2bd593ddbb12eee1b7f3be721ed8dfd93145ebe4de6ed5df0b`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 66.6 KB (66619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf854c32b6e5b4c169eafff9ffc2727847effd2eac2c6512b08a8810a6cffd1`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395b73083683c2e9066aa384413b230070213569794e3769b9b0770f8dc4f85f`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:fe78941c58bbf5fd78b551fee5a6046f18854fa1d27c218991c3d4558d086095
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b90a808fd29e6fe3ff1c21a831930218dfe873005666067e6e871f0b2c67eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:35:51 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 18:35:52 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 23 Sep 2016 18:35:53 GMT
RUN apk add --no-cache libssl1.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 18:35:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 18:35:55 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 18:36:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		patch 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 23 Sep 2016 18:36:02 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 18:36:02 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 18:36:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:36:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:36:03 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe4f871008474bebdf9156926b07fc237b7ae8668963686e69a9b650d3b0a8`  
		Last Modified: Fri, 23 Sep 2016 18:36:16 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec09314e1bd48c12c64c9aef8cd8e060646161eefe43ca7f9fa18bd0d7303209`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 5.3 KB (5258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c99877deb7c1fa9715bbf9888b3cabbe2822676b2d6cdbcef2092c15dc1f7d`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffb79fd2291dd2bd593ddbb12eee1b7f3be721ed8dfd93145ebe4de6ed5df0b`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 66.6 KB (66619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf854c32b6e5b4c169eafff9ffc2727847effd2eac2c6512b08a8810a6cffd1`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395b73083683c2e9066aa384413b230070213569794e3769b9b0770f8dc4f85f`  
		Last Modified: Fri, 23 Sep 2016 18:36:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
