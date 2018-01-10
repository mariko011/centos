<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1`](#spiped1)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1.6.0`](#spiped160)
-	[`spiped:1.6.0-alpine`](#spiped160-alpine)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:alpine`](#spipedalpine)
-	[`spiped:latest`](#spipedlatest)

## `spiped:1`

```console
$ docker pull spiped@sha256:9a4aa1ea4dfb2099619f27b9f7c2dbc9bfe9024c2e54e6af5c3367ff107e42ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1` - linux; amd64

```console
$ docker pull spiped@sha256:a64a8b384c0da49886b4ceccab03add7439dea2d90b06cbe043288163a262b75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54007494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284e6d8478e575e0a860776c7e199b10f214b9887808a6995d2b6ff5f217cfcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:32:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:32:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:32:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:32:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:32:29 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:32:29 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:32:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:32:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:32:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df240162c034fa62edb4faa9b53e900b8279f03f30bd1e4f4c65938fd70a37bf`  
		Last Modified: Tue, 12 Dec 2017 07:32:46 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971b7dcf14ffd4407b94f56619c6ad0264f37232e04a4125c59ddfd30112d39c`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 2.1 MB (2091943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1eccd52a060a2aec714d257a69bece6d28a408f2e6689a1a6cccd2a350af8c`  
		Last Modified: Tue, 12 Dec 2017 07:32:48 GMT  
		Size: 6.8 MB (6791734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c06884791550d91954465bbaf5fed71d1f7021a1fd2466a01cd18d8ae2c6`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ee18a5d312d1f1debd660cee70fb3f30b21d5a451d60b0ec1a69a8c6d1a787`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f1fe36eeb4bce082bd615578defbb03aa28f38f49d6b83dd99b36dd32e412881
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49247593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3663a7643a4a341ac04fd2079b285455a6e6a2327f075598dc209096f8c70e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 14:06:27 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:06:30 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 14:06:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 14:06:41 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 14:07:25 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:26 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 14:07:26 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 14:07:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 14:07:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f4eeafc969c7869503ed9504a0f077a000cc5e3501a41990be9706bf7fd046`  
		Last Modified: Tue, 12 Dec 2017 14:08:06 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734800193806a736ac5fce0bc6e3a01a1dc0704ff259887e1ed40dea801216a`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 1.8 MB (1774924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06843ad12ae1c89b0943e8cd167a4c9fbc1a56c8b42edff68192ac0fbc5db7f9`  
		Last Modified: Tue, 12 Dec 2017 14:08:08 GMT  
		Size: 5.6 MB (5620761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299e4942db985c9d10128672c0de1552f3171bbf8db1c21d6fdfd3ac3f790b1`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bccda6a4978f6b1f47d4042f3323e284d9aa4b1a5b7059ac0f26ad60853885`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:f4221eeb621fcd597ff60369d3453a6f66c3db73bd1fa5537100f9c9c591b978
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53908502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5929b739153e82a41ab3bebef85fccd49b22a2c19e637b5add831aa6aebe22c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:23:38 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 02:23:54 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:55 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 02:23:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 02:23:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 02:27:51 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 02:27:52 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 02:27:53 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 02:27:55 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:27:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eccd3e30a1e65a7acb4c0c1cd25da744c50135473f6256885b61abb93b91c0a`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69151f476b6cbf8708a29f8b8317c9619a279a9861db4411ffd74ec49ead9ba4`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 1.8 MB (1763280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55095bdc6d7bffd1b9a515805e46b1e28f228f27d4350ed016beff9b2714d32b`  
		Last Modified: Tue, 12 Dec 2017 02:28:21 GMT  
		Size: 6.8 MB (6760644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834f23c779638506bd8f3dc0617c592d3dd8032c42ea93c495383155b8bf75bb`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05f0d8f485deb5915b7206a4de56e5e6e3e74a21c8bad0cbcab2eb91bcaacbc`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:f9589dc0a5b1f41a30877035fdecd9a9c5ae6669d8aa2df19af31c2be457a950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54481323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50dac60315082d72740e7512378ec9398feb33fd69631eb1701ba33bd9f60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:22:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:22:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:22:59 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:23:00 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:23:00 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:23:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:23:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:23:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2c63e451f0c1a0e9e095d99ba658ca5c7d0e311802a60b52c2d6ae6d31e1ad`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76aa97683730204dee2bc2878bfd9fe290ff712b64a1ba04b587488aace662`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.8 MB (1825925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5e3b6c3ad2810e93f77a2020d3b45b86f8aafc1a8b9e84b1c1c0e1791a8587`  
		Last Modified: Tue, 12 Dec 2017 07:23:17 GMT  
		Size: 7.7 MB (7686137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8618973db68e2c12a160a07f70d37fd9b3c7c18a6e8b2f615e5c83e20133790`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad98e1fb36a8e9d141a7ceef7b4acf6f31481bbe7cd19676ad6e13c9c0ca7fbc`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:9a4aa1ea4dfb2099619f27b9f7c2dbc9bfe9024c2e54e6af5c3367ff107e42ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6` - linux; amd64

```console
$ docker pull spiped@sha256:a64a8b384c0da49886b4ceccab03add7439dea2d90b06cbe043288163a262b75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54007494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284e6d8478e575e0a860776c7e199b10f214b9887808a6995d2b6ff5f217cfcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:32:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:32:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:32:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:32:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:32:29 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:32:29 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:32:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:32:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:32:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df240162c034fa62edb4faa9b53e900b8279f03f30bd1e4f4c65938fd70a37bf`  
		Last Modified: Tue, 12 Dec 2017 07:32:46 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971b7dcf14ffd4407b94f56619c6ad0264f37232e04a4125c59ddfd30112d39c`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 2.1 MB (2091943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1eccd52a060a2aec714d257a69bece6d28a408f2e6689a1a6cccd2a350af8c`  
		Last Modified: Tue, 12 Dec 2017 07:32:48 GMT  
		Size: 6.8 MB (6791734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c06884791550d91954465bbaf5fed71d1f7021a1fd2466a01cd18d8ae2c6`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ee18a5d312d1f1debd660cee70fb3f30b21d5a451d60b0ec1a69a8c6d1a787`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f1fe36eeb4bce082bd615578defbb03aa28f38f49d6b83dd99b36dd32e412881
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49247593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3663a7643a4a341ac04fd2079b285455a6e6a2327f075598dc209096f8c70e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 14:06:27 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:06:30 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 14:06:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 14:06:41 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 14:07:25 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:26 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 14:07:26 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 14:07:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 14:07:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f4eeafc969c7869503ed9504a0f077a000cc5e3501a41990be9706bf7fd046`  
		Last Modified: Tue, 12 Dec 2017 14:08:06 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734800193806a736ac5fce0bc6e3a01a1dc0704ff259887e1ed40dea801216a`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 1.8 MB (1774924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06843ad12ae1c89b0943e8cd167a4c9fbc1a56c8b42edff68192ac0fbc5db7f9`  
		Last Modified: Tue, 12 Dec 2017 14:08:08 GMT  
		Size: 5.6 MB (5620761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299e4942db985c9d10128672c0de1552f3171bbf8db1c21d6fdfd3ac3f790b1`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bccda6a4978f6b1f47d4042f3323e284d9aa4b1a5b7059ac0f26ad60853885`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:f4221eeb621fcd597ff60369d3453a6f66c3db73bd1fa5537100f9c9c591b978
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53908502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5929b739153e82a41ab3bebef85fccd49b22a2c19e637b5add831aa6aebe22c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:23:38 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 02:23:54 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:55 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 02:23:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 02:23:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 02:27:51 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 02:27:52 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 02:27:53 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 02:27:55 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:27:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eccd3e30a1e65a7acb4c0c1cd25da744c50135473f6256885b61abb93b91c0a`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69151f476b6cbf8708a29f8b8317c9619a279a9861db4411ffd74ec49ead9ba4`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 1.8 MB (1763280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55095bdc6d7bffd1b9a515805e46b1e28f228f27d4350ed016beff9b2714d32b`  
		Last Modified: Tue, 12 Dec 2017 02:28:21 GMT  
		Size: 6.8 MB (6760644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834f23c779638506bd8f3dc0617c592d3dd8032c42ea93c495383155b8bf75bb`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05f0d8f485deb5915b7206a4de56e5e6e3e74a21c8bad0cbcab2eb91bcaacbc`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:f9589dc0a5b1f41a30877035fdecd9a9c5ae6669d8aa2df19af31c2be457a950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54481323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50dac60315082d72740e7512378ec9398feb33fd69631eb1701ba33bd9f60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:22:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:22:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:22:59 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:23:00 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:23:00 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:23:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:23:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:23:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2c63e451f0c1a0e9e095d99ba658ca5c7d0e311802a60b52c2d6ae6d31e1ad`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76aa97683730204dee2bc2878bfd9fe290ff712b64a1ba04b587488aace662`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.8 MB (1825925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5e3b6c3ad2810e93f77a2020d3b45b86f8aafc1a8b9e84b1c1c0e1791a8587`  
		Last Modified: Tue, 12 Dec 2017 07:23:17 GMT  
		Size: 7.7 MB (7686137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8618973db68e2c12a160a07f70d37fd9b3c7c18a6e8b2f615e5c83e20133790`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad98e1fb36a8e9d141a7ceef7b4acf6f31481bbe7cd19676ad6e13c9c0ca7fbc`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:9a4aa1ea4dfb2099619f27b9f7c2dbc9bfe9024c2e54e6af5c3367ff107e42ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.0` - linux; amd64

```console
$ docker pull spiped@sha256:a64a8b384c0da49886b4ceccab03add7439dea2d90b06cbe043288163a262b75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54007494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284e6d8478e575e0a860776c7e199b10f214b9887808a6995d2b6ff5f217cfcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:32:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:32:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:32:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:32:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:32:29 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:32:29 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:32:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:32:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:32:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df240162c034fa62edb4faa9b53e900b8279f03f30bd1e4f4c65938fd70a37bf`  
		Last Modified: Tue, 12 Dec 2017 07:32:46 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971b7dcf14ffd4407b94f56619c6ad0264f37232e04a4125c59ddfd30112d39c`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 2.1 MB (2091943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1eccd52a060a2aec714d257a69bece6d28a408f2e6689a1a6cccd2a350af8c`  
		Last Modified: Tue, 12 Dec 2017 07:32:48 GMT  
		Size: 6.8 MB (6791734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c06884791550d91954465bbaf5fed71d1f7021a1fd2466a01cd18d8ae2c6`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ee18a5d312d1f1debd660cee70fb3f30b21d5a451d60b0ec1a69a8c6d1a787`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f1fe36eeb4bce082bd615578defbb03aa28f38f49d6b83dd99b36dd32e412881
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49247593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3663a7643a4a341ac04fd2079b285455a6e6a2327f075598dc209096f8c70e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 14:06:27 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:06:30 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 14:06:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 14:06:41 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 14:07:25 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:26 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 14:07:26 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 14:07:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 14:07:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f4eeafc969c7869503ed9504a0f077a000cc5e3501a41990be9706bf7fd046`  
		Last Modified: Tue, 12 Dec 2017 14:08:06 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734800193806a736ac5fce0bc6e3a01a1dc0704ff259887e1ed40dea801216a`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 1.8 MB (1774924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06843ad12ae1c89b0943e8cd167a4c9fbc1a56c8b42edff68192ac0fbc5db7f9`  
		Last Modified: Tue, 12 Dec 2017 14:08:08 GMT  
		Size: 5.6 MB (5620761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299e4942db985c9d10128672c0de1552f3171bbf8db1c21d6fdfd3ac3f790b1`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bccda6a4978f6b1f47d4042f3323e284d9aa4b1a5b7059ac0f26ad60853885`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; ppc64le

```console
$ docker pull spiped@sha256:f4221eeb621fcd597ff60369d3453a6f66c3db73bd1fa5537100f9c9c591b978
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53908502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5929b739153e82a41ab3bebef85fccd49b22a2c19e637b5add831aa6aebe22c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:23:38 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 02:23:54 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:55 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 02:23:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 02:23:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 02:27:51 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 02:27:52 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 02:27:53 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 02:27:55 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:27:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eccd3e30a1e65a7acb4c0c1cd25da744c50135473f6256885b61abb93b91c0a`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69151f476b6cbf8708a29f8b8317c9619a279a9861db4411ffd74ec49ead9ba4`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 1.8 MB (1763280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55095bdc6d7bffd1b9a515805e46b1e28f228f27d4350ed016beff9b2714d32b`  
		Last Modified: Tue, 12 Dec 2017 02:28:21 GMT  
		Size: 6.8 MB (6760644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834f23c779638506bd8f3dc0617c592d3dd8032c42ea93c495383155b8bf75bb`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05f0d8f485deb5915b7206a4de56e5e6e3e74a21c8bad0cbcab2eb91bcaacbc`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:f9589dc0a5b1f41a30877035fdecd9a9c5ae6669d8aa2df19af31c2be457a950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54481323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50dac60315082d72740e7512378ec9398feb33fd69631eb1701ba33bd9f60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:22:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:22:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:22:59 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:23:00 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:23:00 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:23:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:23:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:23:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2c63e451f0c1a0e9e095d99ba658ca5c7d0e311802a60b52c2d6ae6d31e1ad`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76aa97683730204dee2bc2878bfd9fe290ff712b64a1ba04b587488aace662`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.8 MB (1825925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5e3b6c3ad2810e93f77a2020d3b45b86f8aafc1a8b9e84b1c1c0e1791a8587`  
		Last Modified: Tue, 12 Dec 2017 07:23:17 GMT  
		Size: 7.7 MB (7686137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8618973db68e2c12a160a07f70d37fd9b3c7c18a6e8b2f615e5c83e20133790`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad98e1fb36a8e9d141a7ceef7b4acf6f31481bbe7cd19676ad6e13c9c0ca7fbc`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:8f54ba1743c0e5afc63bb202d546f4c7163f9a7c40a86f18184f0e54f2a1dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:3e069cdf415400b0aadae79a28b5e5d3433c24ccfa8c0064c13cc7b702a43554
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8962c58938259837ad7572e32302b3adcf4b75c275d8e2f30e661842248ac75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:03:06 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Jan 2018 02:03:09 GMT
RUN apk add --no-cache libssl1.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Jan 2018 02:03:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Jan 2018 02:03:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Jan 2018 02:03:28 GMT
VOLUME [/spiped]
# Wed, 10 Jan 2018 02:03:29 GMT
WORKDIR /spiped
# Wed, 10 Jan 2018 02:03:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 10 Jan 2018 02:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:03:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304e2755d836bdc392798fd56036c664ecc07db6a2fbfa0bf8deacceed8bbda`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190b5d2540f825fb71f0d12ebf6818a400fdd7fdb1200c6e93ae061d031b6da1`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 1.3 MB (1288349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a39f84747de41687a25dc06dc8b37b88f2f02530d517c86bf2dbd83c205a2c`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 78.0 KB (77963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20349696702c6b27214ece97baa838449eecec9a6635f29e452e48639080c602`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e443849a7d7024c1c48cc613cca57f3751405dcae6fea6f072adaa114ec6333f`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:8f54ba1743c0e5afc63bb202d546f4c7163f9a7c40a86f18184f0e54f2a1dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:3e069cdf415400b0aadae79a28b5e5d3433c24ccfa8c0064c13cc7b702a43554
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8962c58938259837ad7572e32302b3adcf4b75c275d8e2f30e661842248ac75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:03:06 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Jan 2018 02:03:09 GMT
RUN apk add --no-cache libssl1.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Jan 2018 02:03:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Jan 2018 02:03:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Jan 2018 02:03:28 GMT
VOLUME [/spiped]
# Wed, 10 Jan 2018 02:03:29 GMT
WORKDIR /spiped
# Wed, 10 Jan 2018 02:03:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 10 Jan 2018 02:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:03:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304e2755d836bdc392798fd56036c664ecc07db6a2fbfa0bf8deacceed8bbda`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190b5d2540f825fb71f0d12ebf6818a400fdd7fdb1200c6e93ae061d031b6da1`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 1.3 MB (1288349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a39f84747de41687a25dc06dc8b37b88f2f02530d517c86bf2dbd83c205a2c`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 78.0 KB (77963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20349696702c6b27214ece97baa838449eecec9a6635f29e452e48639080c602`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e443849a7d7024c1c48cc613cca57f3751405dcae6fea6f072adaa114ec6333f`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:8f54ba1743c0e5afc63bb202d546f4c7163f9a7c40a86f18184f0e54f2a1dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:3e069cdf415400b0aadae79a28b5e5d3433c24ccfa8c0064c13cc7b702a43554
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8962c58938259837ad7572e32302b3adcf4b75c275d8e2f30e661842248ac75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:03:06 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Jan 2018 02:03:09 GMT
RUN apk add --no-cache libssl1.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Jan 2018 02:03:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Jan 2018 02:03:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Jan 2018 02:03:28 GMT
VOLUME [/spiped]
# Wed, 10 Jan 2018 02:03:29 GMT
WORKDIR /spiped
# Wed, 10 Jan 2018 02:03:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 10 Jan 2018 02:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:03:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304e2755d836bdc392798fd56036c664ecc07db6a2fbfa0bf8deacceed8bbda`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190b5d2540f825fb71f0d12ebf6818a400fdd7fdb1200c6e93ae061d031b6da1`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 1.3 MB (1288349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a39f84747de41687a25dc06dc8b37b88f2f02530d517c86bf2dbd83c205a2c`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 78.0 KB (77963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20349696702c6b27214ece97baa838449eecec9a6635f29e452e48639080c602`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e443849a7d7024c1c48cc613cca57f3751405dcae6fea6f072adaa114ec6333f`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:8f54ba1743c0e5afc63bb202d546f4c7163f9a7c40a86f18184f0e54f2a1dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:3e069cdf415400b0aadae79a28b5e5d3433c24ccfa8c0064c13cc7b702a43554
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8962c58938259837ad7572e32302b3adcf4b75c275d8e2f30e661842248ac75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:03:06 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Jan 2018 02:03:09 GMT
RUN apk add --no-cache libssl1.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Jan 2018 02:03:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Jan 2018 02:03:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Jan 2018 02:03:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Jan 2018 02:03:28 GMT
VOLUME [/spiped]
# Wed, 10 Jan 2018 02:03:29 GMT
WORKDIR /spiped
# Wed, 10 Jan 2018 02:03:30 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 10 Jan 2018 02:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 02:03:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304e2755d836bdc392798fd56036c664ecc07db6a2fbfa0bf8deacceed8bbda`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190b5d2540f825fb71f0d12ebf6818a400fdd7fdb1200c6e93ae061d031b6da1`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 1.3 MB (1288349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a39f84747de41687a25dc06dc8b37b88f2f02530d517c86bf2dbd83c205a2c`  
		Last Modified: Wed, 10 Jan 2018 02:13:25 GMT  
		Size: 78.0 KB (77963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20349696702c6b27214ece97baa838449eecec9a6635f29e452e48639080c602`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e443849a7d7024c1c48cc613cca57f3751405dcae6fea6f072adaa114ec6333f`  
		Last Modified: Wed, 10 Jan 2018 02:13:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:9a4aa1ea4dfb2099619f27b9f7c2dbc9bfe9024c2e54e6af5c3367ff107e42ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:a64a8b384c0da49886b4ceccab03add7439dea2d90b06cbe043288163a262b75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54007494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284e6d8478e575e0a860776c7e199b10f214b9887808a6995d2b6ff5f217cfcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:32:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:32:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:32:08 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:32:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:32:28 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:32:29 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:32:29 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:32:29 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:32:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:32:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df240162c034fa62edb4faa9b53e900b8279f03f30bd1e4f4c65938fd70a37bf`  
		Last Modified: Tue, 12 Dec 2017 07:32:46 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971b7dcf14ffd4407b94f56619c6ad0264f37232e04a4125c59ddfd30112d39c`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 2.1 MB (2091943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1eccd52a060a2aec714d257a69bece6d28a408f2e6689a1a6cccd2a350af8c`  
		Last Modified: Tue, 12 Dec 2017 07:32:48 GMT  
		Size: 6.8 MB (6791734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df29c06884791550d91954465bbaf5fed71d1f7021a1fd2466a01cd18d8ae2c6`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ee18a5d312d1f1debd660cee70fb3f30b21d5a451d60b0ec1a69a8c6d1a787`  
		Last Modified: Tue, 12 Dec 2017 07:32:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:560c522f7249dfd37827a2e2949fe8b576705c67364683d86bd4c922f025ede6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51511664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9769e7253670180c4f12c80d5fefa56744a47a2195a101d68c1ab85b1334a50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 00:04:00 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 00:04:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:04:08 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 00:04:09 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 00:04:42 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 00:04:42 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 00:04:42 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 00:04:43 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 00:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c9d84d181a32bb935d6274e885098643d3df2d49c7becb0def9d74ea83a8d`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2784ce219fd686745bc89565de1bed7426f9fb23a2a6541cd17f7bac449f817`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 1.8 MB (1833659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cd10d34fdcc69b3045f44357d19c5aa5ae6aa89acf6c3d0c2b5e64212d6d0f`  
		Last Modified: Wed, 13 Dec 2017 00:05:07 GMT  
		Size: 5.9 MB (5866607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c95553899cf9e054b7d6773e59f23b9bb24ffd0052d4925f71840efde4e558a`  
		Last Modified: Wed, 13 Dec 2017 00:05:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0b0214c272ec135649ff6d2d37966033419095a1d92ca26c77652d4c638aae`  
		Last Modified: Wed, 13 Dec 2017 00:05:05 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f1fe36eeb4bce082bd615578defbb03aa28f38f49d6b83dd99b36dd32e412881
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49247593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3663a7643a4a341ac04fd2079b285455a6e6a2327f075598dc209096f8c70e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:06:02 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 14:06:27 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:06:30 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 14:06:31 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 14:06:41 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 14:07:25 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:07:26 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 14:07:26 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 14:07:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 14:07:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:07:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f4eeafc969c7869503ed9504a0f077a000cc5e3501a41990be9706bf7fd046`  
		Last Modified: Tue, 12 Dec 2017 14:08:06 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734800193806a736ac5fce0bc6e3a01a1dc0704ff259887e1ed40dea801216a`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 1.8 MB (1774924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06843ad12ae1c89b0943e8cd167a4c9fbc1a56c8b42edff68192ac0fbc5db7f9`  
		Last Modified: Tue, 12 Dec 2017 14:08:08 GMT  
		Size: 5.6 MB (5620761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299e4942db985c9d10128672c0de1552f3171bbf8db1c21d6fdfd3ac3f790b1`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bccda6a4978f6b1f47d4042f3323e284d9aa4b1a5b7059ac0f26ad60853885`  
		Last Modified: Tue, 12 Dec 2017 14:08:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:d514b859091e1e5e5d467494856093b7724758d252481e1e7170e008e0a6d121
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50891969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca054154878db78448c83d3b685358836d23c8d79d39f9563fe8e5052d44078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 20:53:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 14 Dec 2017 20:54:06 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:54:06 GMT
ENV SPIPED_VERSION=1.6.0
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Thu, 14 Dec 2017 20:54:07 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Thu, 14 Dec 2017 20:55:37 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Dec 2017 20:55:38 GMT
VOLUME [/spiped]
# Thu, 14 Dec 2017 20:55:39 GMT
WORKDIR /spiped
# Thu, 14 Dec 2017 20:55:40 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Thu, 14 Dec 2017 20:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 20:55:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5644974e24dbe41529271b1c148cc836147096fc1aaafc2e402b515fd6dce58`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b154fa51ba797d27e38414d2fd79bebd72df7f8e36dee8fe659bc5c7dbc213c9`  
		Last Modified: Thu, 14 Dec 2017 20:56:13 GMT  
		Size: 1.8 MB (1825814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e01042fcf58d2ff94428ce5e5f789e773f5c607d5b7e80dba0a605a3ebf69`  
		Last Modified: Thu, 14 Dec 2017 20:56:17 GMT  
		Size: 6.2 MB (6151147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a2207126ecfe5f6cf30c933e19e6fdfed6935fdb664138d69798f97223cb84`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ead75dcf5effda7e903ad973ed5d9bb3b0e1b3d2b8f7fe8428a5f75835b18f`  
		Last Modified: Thu, 14 Dec 2017 20:56:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:d25946f1efb7003973193f2c3d645254e80f68ba8c47d37b2243a2655a85b138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58131701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3965a5533a4e2fd1fe8a2e3f54566e503d546b7b74755d264dab1957e1c9442`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:43:58 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 13 Dec 2017 14:44:15 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 13 Dec 2017 14:44:17 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 13 Dec 2017 14:45:02 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Dec 2017 14:45:02 GMT
VOLUME [/spiped]
# Wed, 13 Dec 2017 14:45:03 GMT
WORKDIR /spiped
# Wed, 13 Dec 2017 14:45:03 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 13 Dec 2017 14:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 14:45:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809914ee658c1e958ce0ca27daab31747785aff9990473948f19241636a663e`  
		Last Modified: Wed, 13 Dec 2017 14:45:40 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3437201f8fbabb85f5392c2be04f09e2c1c370bcd31fffc76f78e39a08635e5d`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 2.1 MB (2084828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff97210e5f69e3a11b38fff94c5f5bc9cbc5444f4e383437556f2d0eeba5fe`  
		Last Modified: Wed, 13 Dec 2017 14:45:44 GMT  
		Size: 10.2 MB (10217624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2569643eda9bf4c944b52e7fa9287c26a78bcc1deb70ab25a0d6d6ccb25a35`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c353cb4873ed0d112b2f6b37b9554b1a4ee4c6a0abf53b07cc12a903c5b3883`  
		Last Modified: Wed, 13 Dec 2017 14:45:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:f4221eeb621fcd597ff60369d3453a6f66c3db73bd1fa5537100f9c9c591b978
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53908502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5929b739153e82a41ab3bebef85fccd49b22a2c19e637b5add831aa6aebe22c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:23:38 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 02:23:54 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:23:55 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 02:23:56 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 02:23:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 02:27:51 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 02:27:52 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 02:27:53 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 02:27:55 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:27:58 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eccd3e30a1e65a7acb4c0c1cd25da744c50135473f6256885b61abb93b91c0a`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69151f476b6cbf8708a29f8b8317c9619a279a9861db4411ffd74ec49ead9ba4`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 1.8 MB (1763280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55095bdc6d7bffd1b9a515805e46b1e28f228f27d4350ed016beff9b2714d32b`  
		Last Modified: Tue, 12 Dec 2017 02:28:21 GMT  
		Size: 6.8 MB (6760644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834f23c779638506bd8f3dc0617c592d3dd8032c42ea93c495383155b8bf75bb`  
		Last Modified: Tue, 12 Dec 2017 02:28:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05f0d8f485deb5915b7206a4de56e5e6e3e74a21c8bad0cbcab2eb91bcaacbc`  
		Last Modified: Tue, 12 Dec 2017 02:28:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:f9589dc0a5b1f41a30877035fdecd9a9c5ae6669d8aa2df19af31c2be457a950
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54481323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae50dac60315082d72740e7512378ec9398feb33fd69631eb1701ba33bd9f60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:22:31 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 12 Dec 2017 07:22:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 12 Dec 2017 07:22:35 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 12 Dec 2017 07:22:59 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:23:00 GMT
VOLUME [/spiped]
# Tue, 12 Dec 2017 07:23:00 GMT
WORKDIR /spiped
# Tue, 12 Dec 2017 07:23:00 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:23:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:23:01 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2c63e451f0c1a0e9e095d99ba658ca5c7d0e311802a60b52c2d6ae6d31e1ad`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76aa97683730204dee2bc2878bfd9fe290ff712b64a1ba04b587488aace662`  
		Last Modified: Tue, 12 Dec 2017 07:23:14 GMT  
		Size: 1.8 MB (1825925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5e3b6c3ad2810e93f77a2020d3b45b86f8aafc1a8b9e84b1c1c0e1791a8587`  
		Last Modified: Tue, 12 Dec 2017 07:23:17 GMT  
		Size: 7.7 MB (7686137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8618973db68e2c12a160a07f70d37fd9b3c7c18a6e8b2f615e5c83e20133790`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad98e1fb36a8e9d141a7ceef7b4acf6f31481bbe7cd19676ad6e13c9c0ca7fbc`  
		Last Modified: Tue, 12 Dec 2017 07:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
