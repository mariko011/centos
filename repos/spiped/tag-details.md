<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1.6.0`](#spiped160)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1`](#spiped1)
-	[`spiped:latest`](#spipedlatest)
-	[`spiped:1.6.0-alpine`](#spiped160-alpine)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:alpine`](#spipedalpine)

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:b1fc40a44538ebeb49cee359f45c32469f8c0ec488517e7e222d899ca5da39c8
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53982573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c60f80339c7ce1426e4a1600d584739e8157ae6ed9350afdf61032e8046d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 15:55:01 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 26 Jul 2017 15:55:07 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:55:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 26 Jul 2017 15:55:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 15:55:29 GMT
VOLUME [/spiped]
# Wed, 26 Jul 2017 15:55:29 GMT
WORKDIR /spiped
# Wed, 26 Jul 2017 15:55:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 26 Jul 2017 15:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 15:55:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7f10e3de490be886963776906276580d44ae093d772cf129695f2635fb7fb3`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f1e1323324730f16e848d6b34e81d8d958c66649e1ac570c50de449ab43680`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 2.1 MB (2091716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb456013d561c61498df07c18ce81c061dd00f287b59c430cbb9fb11a61f887f`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 6.7 MB (6745768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57640ec0b4920a0bafb4e01438e526f560b3abc039a9320ae56385e95ff09584`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546b997bdc768bbc4c6d2f92a71fe8116c2de6f3aad77014627a6598149a7252`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:b1fc40a44538ebeb49cee359f45c32469f8c0ec488517e7e222d899ca5da39c8
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53982573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c60f80339c7ce1426e4a1600d584739e8157ae6ed9350afdf61032e8046d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 15:55:01 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 26 Jul 2017 15:55:07 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:55:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 26 Jul 2017 15:55:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 15:55:29 GMT
VOLUME [/spiped]
# Wed, 26 Jul 2017 15:55:29 GMT
WORKDIR /spiped
# Wed, 26 Jul 2017 15:55:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 26 Jul 2017 15:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 15:55:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7f10e3de490be886963776906276580d44ae093d772cf129695f2635fb7fb3`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f1e1323324730f16e848d6b34e81d8d958c66649e1ac570c50de449ab43680`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 2.1 MB (2091716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb456013d561c61498df07c18ce81c061dd00f287b59c430cbb9fb11a61f887f`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 6.7 MB (6745768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57640ec0b4920a0bafb4e01438e526f560b3abc039a9320ae56385e95ff09584`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546b997bdc768bbc4c6d2f92a71fe8116c2de6f3aad77014627a6598149a7252`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:b1fc40a44538ebeb49cee359f45c32469f8c0ec488517e7e222d899ca5da39c8
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53982573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c60f80339c7ce1426e4a1600d584739e8157ae6ed9350afdf61032e8046d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 15:55:01 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 26 Jul 2017 15:55:07 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:55:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 26 Jul 2017 15:55:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 15:55:29 GMT
VOLUME [/spiped]
# Wed, 26 Jul 2017 15:55:29 GMT
WORKDIR /spiped
# Wed, 26 Jul 2017 15:55:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 26 Jul 2017 15:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 15:55:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7f10e3de490be886963776906276580d44ae093d772cf129695f2635fb7fb3`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f1e1323324730f16e848d6b34e81d8d958c66649e1ac570c50de449ab43680`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 2.1 MB (2091716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb456013d561c61498df07c18ce81c061dd00f287b59c430cbb9fb11a61f887f`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 6.7 MB (6745768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57640ec0b4920a0bafb4e01438e526f560b3abc039a9320ae56385e95ff09584`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546b997bdc768bbc4c6d2f92a71fe8116c2de6f3aad77014627a6598149a7252`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:b1fc40a44538ebeb49cee359f45c32469f8c0ec488517e7e222d899ca5da39c8
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53982573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c60f80339c7ce1426e4a1600d584739e8157ae6ed9350afdf61032e8046d58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 15:55:01 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 26 Jul 2017 15:55:07 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:55:07 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 26 Jul 2017 15:55:08 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 26 Jul 2017 15:55:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 15:55:29 GMT
VOLUME [/spiped]
# Wed, 26 Jul 2017 15:55:29 GMT
WORKDIR /spiped
# Wed, 26 Jul 2017 15:55:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 26 Jul 2017 15:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 15:55:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7f10e3de490be886963776906276580d44ae093d772cf129695f2635fb7fb3`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f1e1323324730f16e848d6b34e81d8d958c66649e1ac570c50de449ab43680`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 2.1 MB (2091716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb456013d561c61498df07c18ce81c061dd00f287b59c430cbb9fb11a61f887f`  
		Last Modified: Wed, 26 Jul 2017 15:55:37 GMT  
		Size: 6.7 MB (6745768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57640ec0b4920a0bafb4e01438e526f560b3abc039a9320ae56385e95ff09584`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546b997bdc768bbc4c6d2f92a71fe8116c2de6f3aad77014627a6598149a7252`  
		Last Modified: Wed, 26 Jul 2017 15:55:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:c8928b6d72cbe227b1ca37cd39c200d4fc03acf1a8c53e0d9769cc385c23043f
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473380c2a5837130ed122976e2946085b0be08c750f462b7bd12b7924df8639`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 23:27:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 28 Jun 2017 23:27:36 GMT
RUN apk add --no-cache libssl1.0
# Wed, 28 Jun 2017 23:28:01 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 28 Jun 2017 23:28:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 28 Jun 2017 23:28:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 28 Jun 2017 23:28:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 28 Jun 2017 23:28:30 GMT
VOLUME [/spiped]
# Wed, 28 Jun 2017 23:28:31 GMT
WORKDIR /spiped
# Wed, 28 Jun 2017 23:28:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 28 Jun 2017 23:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:28:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a256a429e8c762af4ad7070a5f93fe43c0a2236de92dc4f74e8b605b6a097224`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b613f8a3713041ec531b06865aac75b0bcf38d6f517d708aad8ee0f4c92bc6`  
		Last Modified: Fri, 30 Jun 2017 02:14:51 GMT  
		Size: 1.3 MB (1284747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b040fb8c981c5f5c334e8e8c0727587fb3cec03b5bd3856a6288e59961b3044b`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 77.5 KB (77511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db1676b14502fabb928727200249717c3b3dcd61332f68fed681a5021adff1`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cacecf5207f9d2de64e01500dac60225074be4d5f976e7de50281a2da53f8b9`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:c8928b6d72cbe227b1ca37cd39c200d4fc03acf1a8c53e0d9769cc385c23043f
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473380c2a5837130ed122976e2946085b0be08c750f462b7bd12b7924df8639`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 23:27:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 28 Jun 2017 23:27:36 GMT
RUN apk add --no-cache libssl1.0
# Wed, 28 Jun 2017 23:28:01 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 28 Jun 2017 23:28:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 28 Jun 2017 23:28:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 28 Jun 2017 23:28:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 28 Jun 2017 23:28:30 GMT
VOLUME [/spiped]
# Wed, 28 Jun 2017 23:28:31 GMT
WORKDIR /spiped
# Wed, 28 Jun 2017 23:28:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 28 Jun 2017 23:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:28:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a256a429e8c762af4ad7070a5f93fe43c0a2236de92dc4f74e8b605b6a097224`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b613f8a3713041ec531b06865aac75b0bcf38d6f517d708aad8ee0f4c92bc6`  
		Last Modified: Fri, 30 Jun 2017 02:14:51 GMT  
		Size: 1.3 MB (1284747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b040fb8c981c5f5c334e8e8c0727587fb3cec03b5bd3856a6288e59961b3044b`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 77.5 KB (77511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db1676b14502fabb928727200249717c3b3dcd61332f68fed681a5021adff1`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cacecf5207f9d2de64e01500dac60225074be4d5f976e7de50281a2da53f8b9`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:c8928b6d72cbe227b1ca37cd39c200d4fc03acf1a8c53e0d9769cc385c23043f
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473380c2a5837130ed122976e2946085b0be08c750f462b7bd12b7924df8639`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 23:27:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 28 Jun 2017 23:27:36 GMT
RUN apk add --no-cache libssl1.0
# Wed, 28 Jun 2017 23:28:01 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 28 Jun 2017 23:28:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 28 Jun 2017 23:28:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 28 Jun 2017 23:28:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 28 Jun 2017 23:28:30 GMT
VOLUME [/spiped]
# Wed, 28 Jun 2017 23:28:31 GMT
WORKDIR /spiped
# Wed, 28 Jun 2017 23:28:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 28 Jun 2017 23:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:28:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a256a429e8c762af4ad7070a5f93fe43c0a2236de92dc4f74e8b605b6a097224`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b613f8a3713041ec531b06865aac75b0bcf38d6f517d708aad8ee0f4c92bc6`  
		Last Modified: Fri, 30 Jun 2017 02:14:51 GMT  
		Size: 1.3 MB (1284747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b040fb8c981c5f5c334e8e8c0727587fb3cec03b5bd3856a6288e59961b3044b`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 77.5 KB (77511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db1676b14502fabb928727200249717c3b3dcd61332f68fed681a5021adff1`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cacecf5207f9d2de64e01500dac60225074be4d5f976e7de50281a2da53f8b9`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:c8928b6d72cbe227b1ca37cd39c200d4fc03acf1a8c53e0d9769cc385c23043f
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0473380c2a5837130ed122976e2946085b0be08c750f462b7bd12b7924df8639`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 23:27:32 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 28 Jun 2017 23:27:36 GMT
RUN apk add --no-cache libssl1.0
# Wed, 28 Jun 2017 23:28:01 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 28 Jun 2017 23:28:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 28 Jun 2017 23:28:03 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 28 Jun 2017 23:28:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 28 Jun 2017 23:28:30 GMT
VOLUME [/spiped]
# Wed, 28 Jun 2017 23:28:31 GMT
WORKDIR /spiped
# Wed, 28 Jun 2017 23:28:33 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 28 Jun 2017 23:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:28:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a256a429e8c762af4ad7070a5f93fe43c0a2236de92dc4f74e8b605b6a097224`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b613f8a3713041ec531b06865aac75b0bcf38d6f517d708aad8ee0f4c92bc6`  
		Last Modified: Fri, 30 Jun 2017 02:14:51 GMT  
		Size: 1.3 MB (1284747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b040fb8c981c5f5c334e8e8c0727587fb3cec03b5bd3856a6288e59961b3044b`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 77.5 KB (77511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7db1676b14502fabb928727200249717c3b3dcd61332f68fed681a5021adff1`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cacecf5207f9d2de64e01500dac60225074be4d5f976e7de50281a2da53f8b9`  
		Last Modified: Fri, 30 Jun 2017 02:14:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
