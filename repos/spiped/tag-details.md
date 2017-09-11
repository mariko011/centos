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
$ docker pull spiped@sha256:1cb3e2f6158da9a34ab8789e3381b1f84b48628fec6329c372c3c0682a560b59
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53965506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb8bce4312497a57c7a88645579a3ed35d364ef80a1eb6ed7e56dc039c1199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:06:11 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 11:06:16 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:06:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 11:06:38 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 11:06:38 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 11:06:38 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 11:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 11:06:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5037ad2c064e9b6a3fc473cac4b1d9d877e79f42d1ee74cbcf14f13a799b0c6`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd31127ef6d398905eb50070ee31765dab4731ff3d4a92c030c3f5296ee704ce`  
		Last Modified: Mon, 11 Sep 2017 15:50:46 GMT  
		Size: 2.1 MB (2091775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bec8323266a0b3a0ab752efd6139a39375a86dfffff6d504caebcc68215686`  
		Last Modified: Mon, 11 Sep 2017 15:50:48 GMT  
		Size: 6.7 MB (6746080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d516e911b9c1f0ec27b021f3223afe4cd7824aa2a446cb974fcfa006884501b`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d452db66037b3da0305c5784a2492cfdfc5395c63e2645c067d315351b3c40f2`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:1cb3e2f6158da9a34ab8789e3381b1f84b48628fec6329c372c3c0682a560b59
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53965506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb8bce4312497a57c7a88645579a3ed35d364ef80a1eb6ed7e56dc039c1199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:06:11 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 11:06:16 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:06:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 11:06:38 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 11:06:38 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 11:06:38 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 11:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 11:06:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5037ad2c064e9b6a3fc473cac4b1d9d877e79f42d1ee74cbcf14f13a799b0c6`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd31127ef6d398905eb50070ee31765dab4731ff3d4a92c030c3f5296ee704ce`  
		Last Modified: Mon, 11 Sep 2017 15:50:46 GMT  
		Size: 2.1 MB (2091775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bec8323266a0b3a0ab752efd6139a39375a86dfffff6d504caebcc68215686`  
		Last Modified: Mon, 11 Sep 2017 15:50:48 GMT  
		Size: 6.7 MB (6746080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d516e911b9c1f0ec27b021f3223afe4cd7824aa2a446cb974fcfa006884501b`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d452db66037b3da0305c5784a2492cfdfc5395c63e2645c067d315351b3c40f2`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:1cb3e2f6158da9a34ab8789e3381b1f84b48628fec6329c372c3c0682a560b59
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53965506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb8bce4312497a57c7a88645579a3ed35d364ef80a1eb6ed7e56dc039c1199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:06:11 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 11:06:16 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:06:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 11:06:38 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 11:06:38 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 11:06:38 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 11:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 11:06:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5037ad2c064e9b6a3fc473cac4b1d9d877e79f42d1ee74cbcf14f13a799b0c6`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd31127ef6d398905eb50070ee31765dab4731ff3d4a92c030c3f5296ee704ce`  
		Last Modified: Mon, 11 Sep 2017 15:50:46 GMT  
		Size: 2.1 MB (2091775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bec8323266a0b3a0ab752efd6139a39375a86dfffff6d504caebcc68215686`  
		Last Modified: Mon, 11 Sep 2017 15:50:48 GMT  
		Size: 6.7 MB (6746080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d516e911b9c1f0ec27b021f3223afe4cd7824aa2a446cb974fcfa006884501b`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d452db66037b3da0305c5784a2492cfdfc5395c63e2645c067d315351b3c40f2`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:1cb3e2f6158da9a34ab8789e3381b1f84b48628fec6329c372c3c0682a560b59
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53965506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fb8bce4312497a57c7a88645579a3ed35d364ef80a1eb6ed7e56dc039c1199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:06:11 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 11:06:16 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:06:16 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 11:06:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 11:06:38 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 11:06:38 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 11:06:38 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 11:06:39 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 11:06:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5037ad2c064e9b6a3fc473cac4b1d9d877e79f42d1ee74cbcf14f13a799b0c6`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd31127ef6d398905eb50070ee31765dab4731ff3d4a92c030c3f5296ee704ce`  
		Last Modified: Mon, 11 Sep 2017 15:50:46 GMT  
		Size: 2.1 MB (2091775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bec8323266a0b3a0ab752efd6139a39375a86dfffff6d504caebcc68215686`  
		Last Modified: Mon, 11 Sep 2017 15:50:48 GMT  
		Size: 6.7 MB (6746080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d516e911b9c1f0ec27b021f3223afe4cd7824aa2a446cb974fcfa006884501b`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d452db66037b3da0305c5784a2492cfdfc5395c63e2645c067d315351b3c40f2`  
		Last Modified: Mon, 11 Sep 2017 15:50:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:209972b5f65fec329edaf7b310c1452ab8c2ed84f84b639cfd764159ffa6b83a
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18a95531ceabea91783c83820823273b7093e2efe4666dd66e97119524254e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 31 Aug 2017 16:34:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Aug 2017 16:34:33 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Aug 2017 16:34:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Aug 2017 16:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Aug 2017 16:34:43 GMT
VOLUME [/spiped]
# Thu, 31 Aug 2017 16:34:44 GMT
WORKDIR /spiped
# Thu, 31 Aug 2017 16:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 31 Aug 2017 16:34:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 16:34:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1a0556acb1edbb31728db942f36b58fbc5e22f967c6a8a73034a19a6dd558e`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c6e251ab54ddc3eb294f6789d3465e70d95a4605d6f2d2a8ba9bd79bb0e16`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.3 MB (1285904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07bfde96011681f118cd8eab094f2b5cbf17b54dc1c69b47dad8f137fa2d73`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 467.8 KB (467757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f66ce8aec187a2b827812fcd58363780d6bc75417582063af434e77477fbd7`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3abaef101175424b622462dc37b26c217b277e966d838e4e71ccfc6ed46d86`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:209972b5f65fec329edaf7b310c1452ab8c2ed84f84b639cfd764159ffa6b83a
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18a95531ceabea91783c83820823273b7093e2efe4666dd66e97119524254e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 31 Aug 2017 16:34:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Aug 2017 16:34:33 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Aug 2017 16:34:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Aug 2017 16:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Aug 2017 16:34:43 GMT
VOLUME [/spiped]
# Thu, 31 Aug 2017 16:34:44 GMT
WORKDIR /spiped
# Thu, 31 Aug 2017 16:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 31 Aug 2017 16:34:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 16:34:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1a0556acb1edbb31728db942f36b58fbc5e22f967c6a8a73034a19a6dd558e`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c6e251ab54ddc3eb294f6789d3465e70d95a4605d6f2d2a8ba9bd79bb0e16`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.3 MB (1285904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07bfde96011681f118cd8eab094f2b5cbf17b54dc1c69b47dad8f137fa2d73`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 467.8 KB (467757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f66ce8aec187a2b827812fcd58363780d6bc75417582063af434e77477fbd7`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3abaef101175424b622462dc37b26c217b277e966d838e4e71ccfc6ed46d86`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:209972b5f65fec329edaf7b310c1452ab8c2ed84f84b639cfd764159ffa6b83a
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18a95531ceabea91783c83820823273b7093e2efe4666dd66e97119524254e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 31 Aug 2017 16:34:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Aug 2017 16:34:33 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Aug 2017 16:34:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Aug 2017 16:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Aug 2017 16:34:43 GMT
VOLUME [/spiped]
# Thu, 31 Aug 2017 16:34:44 GMT
WORKDIR /spiped
# Thu, 31 Aug 2017 16:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 31 Aug 2017 16:34:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 16:34:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1a0556acb1edbb31728db942f36b58fbc5e22f967c6a8a73034a19a6dd558e`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c6e251ab54ddc3eb294f6789d3465e70d95a4605d6f2d2a8ba9bd79bb0e16`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.3 MB (1285904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07bfde96011681f118cd8eab094f2b5cbf17b54dc1c69b47dad8f137fa2d73`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 467.8 KB (467757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f66ce8aec187a2b827812fcd58363780d6bc75417582063af434e77477fbd7`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3abaef101175424b622462dc37b26c217b277e966d838e4e71ccfc6ed46d86`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:209972b5f65fec329edaf7b310c1452ab8c2ed84f84b639cfd764159ffa6b83a
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18a95531ceabea91783c83820823273b7093e2efe4666dd66e97119524254e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 31 Aug 2017 16:34:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Thu, 31 Aug 2017 16:34:33 GMT
RUN apk add --no-cache libssl1.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 31 Aug 2017 16:34:34 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 31 Aug 2017 16:34:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 31 Aug 2017 16:34:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Thu, 31 Aug 2017 16:34:43 GMT
VOLUME [/spiped]
# Thu, 31 Aug 2017 16:34:44 GMT
WORKDIR /spiped
# Thu, 31 Aug 2017 16:34:44 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 31 Aug 2017 16:34:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Aug 2017 16:34:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1a0556acb1edbb31728db942f36b58fbc5e22f967c6a8a73034a19a6dd558e`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c6e251ab54ddc3eb294f6789d3465e70d95a4605d6f2d2a8ba9bd79bb0e16`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 1.3 MB (1285904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07bfde96011681f118cd8eab094f2b5cbf17b54dc1c69b47dad8f137fa2d73`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 467.8 KB (467757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f66ce8aec187a2b827812fcd58363780d6bc75417582063af434e77477fbd7`  
		Last Modified: Thu, 31 Aug 2017 16:34:54 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3abaef101175424b622462dc37b26c217b277e966d838e4e71ccfc6ed46d86`  
		Last Modified: Thu, 31 Aug 2017 16:34:55 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
