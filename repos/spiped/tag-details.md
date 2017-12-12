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
$ docker pull spiped@sha256:f130c8c36cb2c1151dce50ac50ee91e41e1430a874783864220f8777f1be120c
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
$ docker pull spiped@sha256:04b3182aa64a492c247cd6b2962f252cae42da3391eb20255ae5c2b6edc31916
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51501889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ba18d0814ce8ad3b7f19312575909b669df8ef95ccc8d4ca2665df7dcc4952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:08:35 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:08:44 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:08:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:09:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:09:24 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:09:24 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:09:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:09:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af92f79db64e03e168350b85b9029dcda5ae0efdb7de26559b974f9cb1cb819`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56920e4c525c88b403d957f8f3018dd580660e2e7b48dccb79a66c686e2b9ada`  
		Last Modified: Mon, 09 Oct 2017 22:09:34 GMT  
		Size: 1.8 MB (1833601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272787dbc322780837955708901e0c4f76c081140e820876b2f1be7405f5387`  
		Last Modified: Mon, 09 Oct 2017 22:09:35 GMT  
		Size: 5.9 MB (5850170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa3c42b4cc9b7f2974732a862bb8c59cdeab3e8d0cdb1c0bb7285aa64f652c0`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fda62f91da2ef4a10fddf4db2edea25d22f66b4aa5194d97e5e811472f7e50`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:06a88763a91c32ddf3177ccc8ff4785cc53818fb783612a6bcd211e36a7687c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50875097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c1e18866bc75217614d6a10c80124e943fbfa365c88c40f2f840bbefee390`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:10:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 05:11:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:11:09 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 05:11:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 05:11:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 05:16:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:16:40 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 05:16:41 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 05:16:42 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:16:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace265ce216bff261364fac5576dbfa8ad989ed33addd10fa0f259055f9dcf22`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cb7b48974f8c66bc143e6012d6ddf6c349123dc50aac1e705a769f926f3c0d`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 1.8 MB (1825778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021a2793daeba13e5fad8e15e5f36cf44056c847b0aecd6c032f9466f713b4d9`  
		Last Modified: Tue, 10 Oct 2017 05:17:15 GMT  
		Size: 6.1 MB (6135396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1286e3a574db4f4a55d4dd6fa615cc78a09cd38e753a6745e04718c2bb9a945`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219e84f2f8501eb1227b42e0b7f2652472e8eaa6469ad7cd4c2909940275fcc1`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:01490a86fceee86faec1231b99d11ee20ec0f5b6765f67b4c14cdd563038834a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58121899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b338d82d42cf578d0290d287e72e15303bfefc22a97481d071456c49e5fd4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:29:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 03:29:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 03:30:13 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 03:30:13 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 03:30:13 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 03:30:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:30:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 03:30:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47e6914ce392c7b2d06aabfa3f659f295ae652a31390a8e1566508e5a090d29`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb07704ca3bf007a7da419a862b6ae55249dc2751b0b1181f689e7b627fbdee`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 2.1 MB (2084711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886092bd0aa3984219e0e944114e94348d03e7f54f763bc43162ce1b8f7a974`  
		Last Modified: Tue, 10 Oct 2017 03:30:30 GMT  
		Size: 10.2 MB (10201330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46464da46f977c050b75e39de13e1a9b47f91eab59b93f8d374001a549eb68`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e768bf5a71a9582f920632527a628914cc52f3039e260b8ed8bead76abdf6`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 348.0 B  
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
$ docker pull spiped@sha256:f130c8c36cb2c1151dce50ac50ee91e41e1430a874783864220f8777f1be120c
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
$ docker pull spiped@sha256:04b3182aa64a492c247cd6b2962f252cae42da3391eb20255ae5c2b6edc31916
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51501889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ba18d0814ce8ad3b7f19312575909b669df8ef95ccc8d4ca2665df7dcc4952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:08:35 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:08:44 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:08:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:09:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:09:24 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:09:24 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:09:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:09:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af92f79db64e03e168350b85b9029dcda5ae0efdb7de26559b974f9cb1cb819`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56920e4c525c88b403d957f8f3018dd580660e2e7b48dccb79a66c686e2b9ada`  
		Last Modified: Mon, 09 Oct 2017 22:09:34 GMT  
		Size: 1.8 MB (1833601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272787dbc322780837955708901e0c4f76c081140e820876b2f1be7405f5387`  
		Last Modified: Mon, 09 Oct 2017 22:09:35 GMT  
		Size: 5.9 MB (5850170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa3c42b4cc9b7f2974732a862bb8c59cdeab3e8d0cdb1c0bb7285aa64f652c0`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fda62f91da2ef4a10fddf4db2edea25d22f66b4aa5194d97e5e811472f7e50`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:06a88763a91c32ddf3177ccc8ff4785cc53818fb783612a6bcd211e36a7687c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50875097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c1e18866bc75217614d6a10c80124e943fbfa365c88c40f2f840bbefee390`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:10:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 05:11:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:11:09 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 05:11:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 05:11:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 05:16:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:16:40 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 05:16:41 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 05:16:42 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:16:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace265ce216bff261364fac5576dbfa8ad989ed33addd10fa0f259055f9dcf22`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cb7b48974f8c66bc143e6012d6ddf6c349123dc50aac1e705a769f926f3c0d`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 1.8 MB (1825778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021a2793daeba13e5fad8e15e5f36cf44056c847b0aecd6c032f9466f713b4d9`  
		Last Modified: Tue, 10 Oct 2017 05:17:15 GMT  
		Size: 6.1 MB (6135396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1286e3a574db4f4a55d4dd6fa615cc78a09cd38e753a6745e04718c2bb9a945`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219e84f2f8501eb1227b42e0b7f2652472e8eaa6469ad7cd4c2909940275fcc1`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:01490a86fceee86faec1231b99d11ee20ec0f5b6765f67b4c14cdd563038834a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58121899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b338d82d42cf578d0290d287e72e15303bfefc22a97481d071456c49e5fd4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:29:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 03:29:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 03:30:13 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 03:30:13 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 03:30:13 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 03:30:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:30:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 03:30:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47e6914ce392c7b2d06aabfa3f659f295ae652a31390a8e1566508e5a090d29`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb07704ca3bf007a7da419a862b6ae55249dc2751b0b1181f689e7b627fbdee`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 2.1 MB (2084711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886092bd0aa3984219e0e944114e94348d03e7f54f763bc43162ce1b8f7a974`  
		Last Modified: Tue, 10 Oct 2017 03:30:30 GMT  
		Size: 10.2 MB (10201330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46464da46f977c050b75e39de13e1a9b47f91eab59b93f8d374001a549eb68`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e768bf5a71a9582f920632527a628914cc52f3039e260b8ed8bead76abdf6`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 348.0 B  
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
$ docker pull spiped@sha256:f130c8c36cb2c1151dce50ac50ee91e41e1430a874783864220f8777f1be120c
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
$ docker pull spiped@sha256:04b3182aa64a492c247cd6b2962f252cae42da3391eb20255ae5c2b6edc31916
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51501889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ba18d0814ce8ad3b7f19312575909b669df8ef95ccc8d4ca2665df7dcc4952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:08:35 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:08:44 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:08:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:09:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:09:24 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:09:24 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:09:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:09:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af92f79db64e03e168350b85b9029dcda5ae0efdb7de26559b974f9cb1cb819`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56920e4c525c88b403d957f8f3018dd580660e2e7b48dccb79a66c686e2b9ada`  
		Last Modified: Mon, 09 Oct 2017 22:09:34 GMT  
		Size: 1.8 MB (1833601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272787dbc322780837955708901e0c4f76c081140e820876b2f1be7405f5387`  
		Last Modified: Mon, 09 Oct 2017 22:09:35 GMT  
		Size: 5.9 MB (5850170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa3c42b4cc9b7f2974732a862bb8c59cdeab3e8d0cdb1c0bb7285aa64f652c0`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fda62f91da2ef4a10fddf4db2edea25d22f66b4aa5194d97e5e811472f7e50`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:06a88763a91c32ddf3177ccc8ff4785cc53818fb783612a6bcd211e36a7687c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50875097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c1e18866bc75217614d6a10c80124e943fbfa365c88c40f2f840bbefee390`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:10:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 05:11:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:11:09 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 05:11:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 05:11:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 05:16:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:16:40 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 05:16:41 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 05:16:42 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:16:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace265ce216bff261364fac5576dbfa8ad989ed33addd10fa0f259055f9dcf22`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cb7b48974f8c66bc143e6012d6ddf6c349123dc50aac1e705a769f926f3c0d`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 1.8 MB (1825778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021a2793daeba13e5fad8e15e5f36cf44056c847b0aecd6c032f9466f713b4d9`  
		Last Modified: Tue, 10 Oct 2017 05:17:15 GMT  
		Size: 6.1 MB (6135396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1286e3a574db4f4a55d4dd6fa615cc78a09cd38e753a6745e04718c2bb9a945`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219e84f2f8501eb1227b42e0b7f2652472e8eaa6469ad7cd4c2909940275fcc1`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; 386

```console
$ docker pull spiped@sha256:01490a86fceee86faec1231b99d11ee20ec0f5b6765f67b4c14cdd563038834a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58121899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b338d82d42cf578d0290d287e72e15303bfefc22a97481d071456c49e5fd4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:29:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 03:29:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 03:30:13 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 03:30:13 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 03:30:13 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 03:30:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:30:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 03:30:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47e6914ce392c7b2d06aabfa3f659f295ae652a31390a8e1566508e5a090d29`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb07704ca3bf007a7da419a862b6ae55249dc2751b0b1181f689e7b627fbdee`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 2.1 MB (2084711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886092bd0aa3984219e0e944114e94348d03e7f54f763bc43162ce1b8f7a974`  
		Last Modified: Tue, 10 Oct 2017 03:30:30 GMT  
		Size: 10.2 MB (10201330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46464da46f977c050b75e39de13e1a9b47f91eab59b93f8d374001a549eb68`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e768bf5a71a9582f920632527a628914cc52f3039e260b8ed8bead76abdf6`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 348.0 B  
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
$ docker pull spiped@sha256:74eefaf6c2cb339d4f70ec73967bbea049c2c956acf4042517365e954437cb93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:304849994cb933d611c494844786ba143068a3d795cfd0a11294fa8213bc5c67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb7e1ec8c10897a8b59aadc0601771bd5e24bbd1f3546ad351cb9ad845e1b7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:18:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Dec 2017 22:18:15 GMT
RUN apk add --no-cache libssl1.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Dec 2017 22:18:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Dec 2017 22:18:26 GMT
VOLUME [/spiped]
# Fri, 01 Dec 2017 22:18:27 GMT
WORKDIR /spiped
# Fri, 01 Dec 2017 22:18:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:18:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:18:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fb73222713ef230f3b6d8c8d93e981b5d0b4b0831b627b8b689b2f31d5913`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557406290b87ea0f7173da5398caab4bcef744e48dcc54389fa184955832008c`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 1.3 MB (1288347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef3dd7f41136c582768d077ed230ad5b78aef3464a9ab670a4db3ad31cbcd54`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 78.0 KB (77964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dccfeeb79ac36515caf9a394393a535cd4647b29533370f8d04ad66bfe388c`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7a002b8d52a6707442f8474bfc822c32fcc9bc62f980c9a6c9c9f723249c2`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:74eefaf6c2cb339d4f70ec73967bbea049c2c956acf4042517365e954437cb93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:304849994cb933d611c494844786ba143068a3d795cfd0a11294fa8213bc5c67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb7e1ec8c10897a8b59aadc0601771bd5e24bbd1f3546ad351cb9ad845e1b7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:18:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Dec 2017 22:18:15 GMT
RUN apk add --no-cache libssl1.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Dec 2017 22:18:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Dec 2017 22:18:26 GMT
VOLUME [/spiped]
# Fri, 01 Dec 2017 22:18:27 GMT
WORKDIR /spiped
# Fri, 01 Dec 2017 22:18:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:18:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:18:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fb73222713ef230f3b6d8c8d93e981b5d0b4b0831b627b8b689b2f31d5913`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557406290b87ea0f7173da5398caab4bcef744e48dcc54389fa184955832008c`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 1.3 MB (1288347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef3dd7f41136c582768d077ed230ad5b78aef3464a9ab670a4db3ad31cbcd54`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 78.0 KB (77964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dccfeeb79ac36515caf9a394393a535cd4647b29533370f8d04ad66bfe388c`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7a002b8d52a6707442f8474bfc822c32fcc9bc62f980c9a6c9c9f723249c2`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:74eefaf6c2cb339d4f70ec73967bbea049c2c956acf4042517365e954437cb93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:304849994cb933d611c494844786ba143068a3d795cfd0a11294fa8213bc5c67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb7e1ec8c10897a8b59aadc0601771bd5e24bbd1f3546ad351cb9ad845e1b7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:18:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Dec 2017 22:18:15 GMT
RUN apk add --no-cache libssl1.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Dec 2017 22:18:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Dec 2017 22:18:26 GMT
VOLUME [/spiped]
# Fri, 01 Dec 2017 22:18:27 GMT
WORKDIR /spiped
# Fri, 01 Dec 2017 22:18:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:18:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:18:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fb73222713ef230f3b6d8c8d93e981b5d0b4b0831b627b8b689b2f31d5913`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557406290b87ea0f7173da5398caab4bcef744e48dcc54389fa184955832008c`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 1.3 MB (1288347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef3dd7f41136c582768d077ed230ad5b78aef3464a9ab670a4db3ad31cbcd54`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 78.0 KB (77964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dccfeeb79ac36515caf9a394393a535cd4647b29533370f8d04ad66bfe388c`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7a002b8d52a6707442f8474bfc822c32fcc9bc62f980c9a6c9c9f723249c2`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:74eefaf6c2cb339d4f70ec73967bbea049c2c956acf4042517365e954437cb93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:304849994cb933d611c494844786ba143068a3d795cfd0a11294fa8213bc5c67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb7e1ec8c10897a8b59aadc0601771bd5e24bbd1f3546ad351cb9ad845e1b7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:18:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Dec 2017 22:18:15 GMT
RUN apk add --no-cache libssl1.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Dec 2017 22:18:15 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Dec 2017 22:18:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Dec 2017 22:18:26 GMT
VOLUME [/spiped]
# Fri, 01 Dec 2017 22:18:27 GMT
WORKDIR /spiped
# Fri, 01 Dec 2017 22:18:27 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 01 Dec 2017 22:18:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 22:18:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515fb73222713ef230f3b6d8c8d93e981b5d0b4b0831b627b8b689b2f31d5913`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557406290b87ea0f7173da5398caab4bcef744e48dcc54389fa184955832008c`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 1.3 MB (1288347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef3dd7f41136c582768d077ed230ad5b78aef3464a9ab670a4db3ad31cbcd54`  
		Last Modified: Fri, 01 Dec 2017 22:18:41 GMT  
		Size: 78.0 KB (77964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dccfeeb79ac36515caf9a394393a535cd4647b29533370f8d04ad66bfe388c`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7a002b8d52a6707442f8474bfc822c32fcc9bc62f980c9a6c9c9f723249c2`  
		Last Modified: Fri, 01 Dec 2017 22:18:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:f130c8c36cb2c1151dce50ac50ee91e41e1430a874783864220f8777f1be120c
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
$ docker pull spiped@sha256:04b3182aa64a492c247cd6b2962f252cae42da3391eb20255ae5c2b6edc31916
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51501889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ba18d0814ce8ad3b7f19312575909b669df8ef95ccc8d4ca2665df7dcc4952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:08:35 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:08:44 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:08:44 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:08:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:09:24 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:09:24 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:09:24 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:09:25 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:09:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af92f79db64e03e168350b85b9029dcda5ae0efdb7de26559b974f9cb1cb819`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56920e4c525c88b403d957f8f3018dd580660e2e7b48dccb79a66c686e2b9ada`  
		Last Modified: Mon, 09 Oct 2017 22:09:34 GMT  
		Size: 1.8 MB (1833601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272787dbc322780837955708901e0c4f76c081140e820876b2f1be7405f5387`  
		Last Modified: Mon, 09 Oct 2017 22:09:35 GMT  
		Size: 5.9 MB (5850170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa3c42b4cc9b7f2974732a862bb8c59cdeab3e8d0cdb1c0bb7285aa64f652c0`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fda62f91da2ef4a10fddf4db2edea25d22f66b4aa5194d97e5e811472f7e50`  
		Last Modified: Mon, 09 Oct 2017 22:09:33 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:06a88763a91c32ddf3177ccc8ff4785cc53818fb783612a6bcd211e36a7687c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50875097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097c1e18866bc75217614d6a10c80124e943fbfa365c88c40f2f840bbefee390`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:10:55 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 05:11:08 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:11:09 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 05:11:10 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 05:11:11 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 05:16:39 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 05:16:40 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 05:16:41 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 05:16:42 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:16:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace265ce216bff261364fac5576dbfa8ad989ed33addd10fa0f259055f9dcf22`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cb7b48974f8c66bc143e6012d6ddf6c349123dc50aac1e705a769f926f3c0d`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 1.8 MB (1825778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021a2793daeba13e5fad8e15e5f36cf44056c847b0aecd6c032f9466f713b4d9`  
		Last Modified: Tue, 10 Oct 2017 05:17:15 GMT  
		Size: 6.1 MB (6135396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1286e3a574db4f4a55d4dd6fa615cc78a09cd38e753a6745e04718c2bb9a945`  
		Last Modified: Tue, 10 Oct 2017 05:17:13 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219e84f2f8501eb1227b42e0b7f2652472e8eaa6469ad7cd4c2909940275fcc1`  
		Last Modified: Tue, 10 Oct 2017 05:17:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:01490a86fceee86faec1231b99d11ee20ec0f5b6765f67b4c14cdd563038834a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58121899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b338d82d42cf578d0290d287e72e15303bfefc22a97481d071456c49e5fd4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:29:44 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 03:29:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 03:29:50 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 03:30:13 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 03:30:13 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 03:30:13 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 03:30:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 03:30:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 03:30:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47e6914ce392c7b2d06aabfa3f659f295ae652a31390a8e1566508e5a090d29`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb07704ca3bf007a7da419a862b6ae55249dc2751b0b1181f689e7b627fbdee`  
		Last Modified: Tue, 10 Oct 2017 03:30:28 GMT  
		Size: 2.1 MB (2084711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886092bd0aa3984219e0e944114e94348d03e7f54f763bc43162ce1b8f7a974`  
		Last Modified: Tue, 10 Oct 2017 03:30:30 GMT  
		Size: 10.2 MB (10201330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e46464da46f977c050b75e39de13e1a9b47f91eab59b93f8d374001a549eb68`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e768bf5a71a9582f920632527a628914cc52f3039e260b8ed8bead76abdf6`  
		Last Modified: Tue, 10 Oct 2017 03:30:27 GMT  
		Size: 348.0 B  
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
