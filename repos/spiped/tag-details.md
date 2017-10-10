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
$ docker pull spiped@sha256:c57e355fbdf3967a2129c90cd9662e3ec730c81f9f2457452419143c4c268eac
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
$ docker pull spiped@sha256:c62f6b3d9cf2d56faa4660339029179f662a881948963116b00df97b7a338b2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53998773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808fa1986f7e8792f3692d37d6e235d7d57c0657b40ad9f8f06f7d1c3e479282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:00:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 04:00:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 04:01:06 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 04:01:06 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 04:01:06 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 04:01:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 04:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 04:01:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a14b2bf417a5c3900a6dcd789cefa89f52f8c48fde065f41da0872a6723b98`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69585cfe36bff4c8a38f5f8e60a1deacb6b1b162eca062c81b7602536fe4034`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 2.1 MB (2091838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2ec815d4f4867e25513341a94063446b820b66761ed1a6e973c0f524537cd3`  
		Last Modified: Tue, 10 Oct 2017 04:01:25 GMT  
		Size: 6.8 MB (6775658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7449aff4a93f67844e1ba908f888d94c7a2a1805a68399d01064058ccbdd9c`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bcfb16bbd9c91bce4e97c72759c73e88437f3addcbcaccab673d778d012cdb`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
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
$ docker pull spiped@sha256:629255b01d9677186a020f4a756e56fc5c796a5d03e115c1f431386ef82bd2e8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49223513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d5a026a9d3bf0c0889dd73ab3443caef3676c13fce50ad6c33a95e00cc264`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:13:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:13:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:14:11 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:11 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:14:12 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:14:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13db9238bfa9ee7b2809157d4b2b1df0b3336b3dfafe5ce1a1fb90d9edcd9822`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4106f3e52252b4004ac7a95bbd0f0e1573997b59fea5003ba92a62bb73c865`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.8 MB (1774837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6b345f297dc7e967db32120cf1dd92b0ffc197b823da410d892b63ae288fb`  
		Last Modified: Mon, 09 Oct 2017 22:14:34 GMT  
		Size: 5.6 MB (5604520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378d3d248da13414bd4499007ff19a9c8244f748070cd7ed884143b9e2c728b6`  
		Last Modified: Mon, 09 Oct 2017 22:14:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e886800ce0a1106d2c87a2df8fd5def797ca3bafa2e45bec086d4b686c98402`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:6f3db62bbafd656d7ca06487e1c0cbf1bdf095dcd1d3c7171e3a893b2e71ce00
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50837139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de9fc5ec123db250c5681033a43e5417881603719a189c6b37c272105fe4b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:22:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 09 Sep 2017 02:22:29 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:22:29 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 09 Sep 2017 02:22:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 09 Sep 2017 02:22:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 09 Sep 2017 02:24:05 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:24:05 GMT
VOLUME [/spiped]
# Sat, 09 Sep 2017 02:24:06 GMT
WORKDIR /spiped
# Sat, 09 Sep 2017 02:24:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:24:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53a4c72a860194e77a1412f7084594cb2e22770f08398c6d6e1ef7b135e0d3`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc31f7419ed7686b13f5780b41ace9c717597dd10e065944a81a63bbc27417b`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 1.8 MB (1825805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17800646da7388cf54e384ede2d46ae5c6382e038a7bc1ca62c5e0edadaae128`  
		Last Modified: Sat, 09 Sep 2017 02:24:28 GMT  
		Size: 6.1 MB (6105065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f11c48633a27431ce757b1913e7d5aee029b7c5c78b754972363ed1d892d0`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a96444a24e8994fecb4ba73cdf9daf341b65ad09406359e6d95d8407fef199`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:b8f0c6ffe26d08dc94e6fdf6ce7aceedfcd614dd49bd7a2011b2732ac751448c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53857286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419c3bd7f08503497054b1f131cb88f82fb98afc588184f8d2f193ca5b3ca67d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 01:18:47 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 01:19:31 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:19:31 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 01:19:32 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 01:19:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:19:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b1985b34e4ce152eb529fd081080743578653e0e27be7f616516be22e36ef3`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6790fe71be54730002df9c8370ccb065d369850177885d0f22eeb30ddca944f8`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.8 MB (1763122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cbd888cd0ac34fdc565893a4f4266d1acdc33ac5c7684db18a57551501b6ad`  
		Last Modified: Fri, 08 Sep 2017 01:19:46 GMT  
		Size: 6.7 MB (6715225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39784baba7d2b02f931a0c8c1860eab8c1407deaa47777b0803c5d0bdecd8935`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3150362cd94a0fdc887e9fb590d9e567b10dda4c5ef6b1864276f64b0dd896ba`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:a428fe2e69ce4ba30713c44547427920588d90bc2bbefe0c5b94dcf8c3cf1aba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54470610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c165df0881a7a47469404eca7089b3d97f26d2559116d907ec14245baee52e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:05:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:05:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:06:15 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:06:15 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:06:15 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:06:16 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:06:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:06:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2552b6a37c26f929a9282490858ccbf9c896a10d2a145fcac347c3c4330b9c15`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6cf21818efef4f6b6ce8a05c586c0f5da02b0521fe08704474bfe572b76313`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.8 MB (1825799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f9128de48b233e171ce3d1f9b6081312bce46fe6ce8565fccc54a48f672657`  
		Last Modified: Mon, 09 Oct 2017 22:06:30 GMT  
		Size: 7.7 MB (7669868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be35415d03daadefce7ea3ac26b3c19f6a9ee32861145ddde6d62a523d4a1692`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64468932cce5679c58b6205ec4c1b37b391ac511a50304b00388187f5a54504a`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:c57e355fbdf3967a2129c90cd9662e3ec730c81f9f2457452419143c4c268eac
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
$ docker pull spiped@sha256:c62f6b3d9cf2d56faa4660339029179f662a881948963116b00df97b7a338b2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53998773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808fa1986f7e8792f3692d37d6e235d7d57c0657b40ad9f8f06f7d1c3e479282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:00:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 04:00:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 04:01:06 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 04:01:06 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 04:01:06 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 04:01:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 04:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 04:01:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a14b2bf417a5c3900a6dcd789cefa89f52f8c48fde065f41da0872a6723b98`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69585cfe36bff4c8a38f5f8e60a1deacb6b1b162eca062c81b7602536fe4034`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 2.1 MB (2091838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2ec815d4f4867e25513341a94063446b820b66761ed1a6e973c0f524537cd3`  
		Last Modified: Tue, 10 Oct 2017 04:01:25 GMT  
		Size: 6.8 MB (6775658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7449aff4a93f67844e1ba908f888d94c7a2a1805a68399d01064058ccbdd9c`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bcfb16bbd9c91bce4e97c72759c73e88437f3addcbcaccab673d778d012cdb`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
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
$ docker pull spiped@sha256:629255b01d9677186a020f4a756e56fc5c796a5d03e115c1f431386ef82bd2e8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49223513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d5a026a9d3bf0c0889dd73ab3443caef3676c13fce50ad6c33a95e00cc264`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:13:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:13:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:14:11 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:11 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:14:12 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:14:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13db9238bfa9ee7b2809157d4b2b1df0b3336b3dfafe5ce1a1fb90d9edcd9822`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4106f3e52252b4004ac7a95bbd0f0e1573997b59fea5003ba92a62bb73c865`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.8 MB (1774837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6b345f297dc7e967db32120cf1dd92b0ffc197b823da410d892b63ae288fb`  
		Last Modified: Mon, 09 Oct 2017 22:14:34 GMT  
		Size: 5.6 MB (5604520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378d3d248da13414bd4499007ff19a9c8244f748070cd7ed884143b9e2c728b6`  
		Last Modified: Mon, 09 Oct 2017 22:14:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e886800ce0a1106d2c87a2df8fd5def797ca3bafa2e45bec086d4b686c98402`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:6f3db62bbafd656d7ca06487e1c0cbf1bdf095dcd1d3c7171e3a893b2e71ce00
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50837139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de9fc5ec123db250c5681033a43e5417881603719a189c6b37c272105fe4b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:22:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 09 Sep 2017 02:22:29 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:22:29 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 09 Sep 2017 02:22:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 09 Sep 2017 02:22:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 09 Sep 2017 02:24:05 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:24:05 GMT
VOLUME [/spiped]
# Sat, 09 Sep 2017 02:24:06 GMT
WORKDIR /spiped
# Sat, 09 Sep 2017 02:24:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:24:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53a4c72a860194e77a1412f7084594cb2e22770f08398c6d6e1ef7b135e0d3`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc31f7419ed7686b13f5780b41ace9c717597dd10e065944a81a63bbc27417b`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 1.8 MB (1825805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17800646da7388cf54e384ede2d46ae5c6382e038a7bc1ca62c5e0edadaae128`  
		Last Modified: Sat, 09 Sep 2017 02:24:28 GMT  
		Size: 6.1 MB (6105065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f11c48633a27431ce757b1913e7d5aee029b7c5c78b754972363ed1d892d0`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a96444a24e8994fecb4ba73cdf9daf341b65ad09406359e6d95d8407fef199`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:b8f0c6ffe26d08dc94e6fdf6ce7aceedfcd614dd49bd7a2011b2732ac751448c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53857286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419c3bd7f08503497054b1f131cb88f82fb98afc588184f8d2f193ca5b3ca67d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 01:18:47 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 01:19:31 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:19:31 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 01:19:32 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 01:19:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:19:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b1985b34e4ce152eb529fd081080743578653e0e27be7f616516be22e36ef3`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6790fe71be54730002df9c8370ccb065d369850177885d0f22eeb30ddca944f8`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.8 MB (1763122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cbd888cd0ac34fdc565893a4f4266d1acdc33ac5c7684db18a57551501b6ad`  
		Last Modified: Fri, 08 Sep 2017 01:19:46 GMT  
		Size: 6.7 MB (6715225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39784baba7d2b02f931a0c8c1860eab8c1407deaa47777b0803c5d0bdecd8935`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3150362cd94a0fdc887e9fb590d9e567b10dda4c5ef6b1864276f64b0dd896ba`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:a428fe2e69ce4ba30713c44547427920588d90bc2bbefe0c5b94dcf8c3cf1aba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54470610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c165df0881a7a47469404eca7089b3d97f26d2559116d907ec14245baee52e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:05:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:05:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:06:15 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:06:15 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:06:15 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:06:16 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:06:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:06:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2552b6a37c26f929a9282490858ccbf9c896a10d2a145fcac347c3c4330b9c15`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6cf21818efef4f6b6ce8a05c586c0f5da02b0521fe08704474bfe572b76313`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.8 MB (1825799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f9128de48b233e171ce3d1f9b6081312bce46fe6ce8565fccc54a48f672657`  
		Last Modified: Mon, 09 Oct 2017 22:06:30 GMT  
		Size: 7.7 MB (7669868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be35415d03daadefce7ea3ac26b3c19f6a9ee32861145ddde6d62a523d4a1692`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64468932cce5679c58b6205ec4c1b37b391ac511a50304b00388187f5a54504a`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0`

```console
$ docker pull spiped@sha256:c57e355fbdf3967a2129c90cd9662e3ec730c81f9f2457452419143c4c268eac
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
$ docker pull spiped@sha256:c62f6b3d9cf2d56faa4660339029179f662a881948963116b00df97b7a338b2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53998773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808fa1986f7e8792f3692d37d6e235d7d57c0657b40ad9f8f06f7d1c3e479282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:00:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 04:00:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 04:01:06 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 04:01:06 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 04:01:06 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 04:01:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 04:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 04:01:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a14b2bf417a5c3900a6dcd789cefa89f52f8c48fde065f41da0872a6723b98`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69585cfe36bff4c8a38f5f8e60a1deacb6b1b162eca062c81b7602536fe4034`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 2.1 MB (2091838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2ec815d4f4867e25513341a94063446b820b66761ed1a6e973c0f524537cd3`  
		Last Modified: Tue, 10 Oct 2017 04:01:25 GMT  
		Size: 6.8 MB (6775658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7449aff4a93f67844e1ba908f888d94c7a2a1805a68399d01064058ccbdd9c`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bcfb16bbd9c91bce4e97c72759c73e88437f3addcbcaccab673d778d012cdb`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
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
$ docker pull spiped@sha256:629255b01d9677186a020f4a756e56fc5c796a5d03e115c1f431386ef82bd2e8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49223513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d5a026a9d3bf0c0889dd73ab3443caef3676c13fce50ad6c33a95e00cc264`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:13:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:13:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:14:11 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:11 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:14:12 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:14:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13db9238bfa9ee7b2809157d4b2b1df0b3336b3dfafe5ce1a1fb90d9edcd9822`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4106f3e52252b4004ac7a95bbd0f0e1573997b59fea5003ba92a62bb73c865`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.8 MB (1774837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6b345f297dc7e967db32120cf1dd92b0ffc197b823da410d892b63ae288fb`  
		Last Modified: Mon, 09 Oct 2017 22:14:34 GMT  
		Size: 5.6 MB (5604520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378d3d248da13414bd4499007ff19a9c8244f748070cd7ed884143b9e2c728b6`  
		Last Modified: Mon, 09 Oct 2017 22:14:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e886800ce0a1106d2c87a2df8fd5def797ca3bafa2e45bec086d4b686c98402`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:6f3db62bbafd656d7ca06487e1c0cbf1bdf095dcd1d3c7171e3a893b2e71ce00
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50837139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de9fc5ec123db250c5681033a43e5417881603719a189c6b37c272105fe4b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:22:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 09 Sep 2017 02:22:29 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:22:29 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 09 Sep 2017 02:22:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 09 Sep 2017 02:22:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 09 Sep 2017 02:24:05 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:24:05 GMT
VOLUME [/spiped]
# Sat, 09 Sep 2017 02:24:06 GMT
WORKDIR /spiped
# Sat, 09 Sep 2017 02:24:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:24:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53a4c72a860194e77a1412f7084594cb2e22770f08398c6d6e1ef7b135e0d3`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc31f7419ed7686b13f5780b41ace9c717597dd10e065944a81a63bbc27417b`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 1.8 MB (1825805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17800646da7388cf54e384ede2d46ae5c6382e038a7bc1ca62c5e0edadaae128`  
		Last Modified: Sat, 09 Sep 2017 02:24:28 GMT  
		Size: 6.1 MB (6105065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f11c48633a27431ce757b1913e7d5aee029b7c5c78b754972363ed1d892d0`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a96444a24e8994fecb4ba73cdf9daf341b65ad09406359e6d95d8407fef199`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:b8f0c6ffe26d08dc94e6fdf6ce7aceedfcd614dd49bd7a2011b2732ac751448c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53857286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419c3bd7f08503497054b1f131cb88f82fb98afc588184f8d2f193ca5b3ca67d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 01:18:47 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 01:19:31 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:19:31 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 01:19:32 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 01:19:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:19:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b1985b34e4ce152eb529fd081080743578653e0e27be7f616516be22e36ef3`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6790fe71be54730002df9c8370ccb065d369850177885d0f22eeb30ddca944f8`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.8 MB (1763122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cbd888cd0ac34fdc565893a4f4266d1acdc33ac5c7684db18a57551501b6ad`  
		Last Modified: Fri, 08 Sep 2017 01:19:46 GMT  
		Size: 6.7 MB (6715225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39784baba7d2b02f931a0c8c1860eab8c1407deaa47777b0803c5d0bdecd8935`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3150362cd94a0fdc887e9fb590d9e567b10dda4c5ef6b1864276f64b0dd896ba`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.0` - linux; s390x

```console
$ docker pull spiped@sha256:a428fe2e69ce4ba30713c44547427920588d90bc2bbefe0c5b94dcf8c3cf1aba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54470610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c165df0881a7a47469404eca7089b3d97f26d2559116d907ec14245baee52e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:05:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:05:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:06:15 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:06:15 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:06:15 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:06:16 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:06:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:06:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2552b6a37c26f929a9282490858ccbf9c896a10d2a145fcac347c3c4330b9c15`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6cf21818efef4f6b6ce8a05c586c0f5da02b0521fe08704474bfe572b76313`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.8 MB (1825799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f9128de48b233e171ce3d1f9b6081312bce46fe6ce8565fccc54a48f672657`  
		Last Modified: Mon, 09 Oct 2017 22:06:30 GMT  
		Size: 7.7 MB (7669868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be35415d03daadefce7ea3ac26b3c19f6a9ee32861145ddde6d62a523d4a1692`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64468932cce5679c58b6205ec4c1b37b391ac511a50304b00388187f5a54504a`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:6b56a3985d92a6c90dd8c387fd5c75efc02f08ce0c413fc77de15b636e515a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:d5cd5b37ff6be6b0e14edaee1519186f410fcde1b9683f4d6b151e253bb8caa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba695b93e70f0f9a022e521e1d41c6e76a49aa780c5b847a8207c542dca2509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 20:33:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 18 Sep 2017 20:34:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 18 Sep 2017 20:34:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 18 Sep 2017 20:34:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 18 Sep 2017 20:34:12 GMT
VOLUME [/spiped]
# Mon, 18 Sep 2017 20:34:12 GMT
WORKDIR /spiped
# Mon, 18 Sep 2017 20:34:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 18 Sep 2017 20:34:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 20:34:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d205563e2d029926468c15b3364db40c111d2f405f8b65d428c928ba9d9387`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2630272b3a28f22738071985f4c6609d7059e9231b7e85782e33e21ba01499`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 MB (1286001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0b6898239af536fee2dab6d286d533baa963d3f5280eda5c257c4fc4091ea`  
		Last Modified: Mon, 18 Sep 2017 20:34:49 GMT  
		Size: 467.8 KB (467801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b55567ca85fe7dace6945ef21af8fef3f06f5a546b3e2f15f57f12c5f717f9`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4dd865d91c499db3f031f39c103f1352b16d6178a7257d73f4c0e4c0aca38f`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:6b56a3985d92a6c90dd8c387fd5c75efc02f08ce0c413fc77de15b636e515a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:d5cd5b37ff6be6b0e14edaee1519186f410fcde1b9683f4d6b151e253bb8caa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba695b93e70f0f9a022e521e1d41c6e76a49aa780c5b847a8207c542dca2509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 20:33:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 18 Sep 2017 20:34:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 18 Sep 2017 20:34:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 18 Sep 2017 20:34:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 18 Sep 2017 20:34:12 GMT
VOLUME [/spiped]
# Mon, 18 Sep 2017 20:34:12 GMT
WORKDIR /spiped
# Mon, 18 Sep 2017 20:34:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 18 Sep 2017 20:34:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 20:34:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d205563e2d029926468c15b3364db40c111d2f405f8b65d428c928ba9d9387`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2630272b3a28f22738071985f4c6609d7059e9231b7e85782e33e21ba01499`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 MB (1286001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0b6898239af536fee2dab6d286d533baa963d3f5280eda5c257c4fc4091ea`  
		Last Modified: Mon, 18 Sep 2017 20:34:49 GMT  
		Size: 467.8 KB (467801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b55567ca85fe7dace6945ef21af8fef3f06f5a546b3e2f15f57f12c5f717f9`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4dd865d91c499db3f031f39c103f1352b16d6178a7257d73f4c0e4c0aca38f`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:6b56a3985d92a6c90dd8c387fd5c75efc02f08ce0c413fc77de15b636e515a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:d5cd5b37ff6be6b0e14edaee1519186f410fcde1b9683f4d6b151e253bb8caa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba695b93e70f0f9a022e521e1d41c6e76a49aa780c5b847a8207c542dca2509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 20:33:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 18 Sep 2017 20:34:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 18 Sep 2017 20:34:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 18 Sep 2017 20:34:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 18 Sep 2017 20:34:12 GMT
VOLUME [/spiped]
# Mon, 18 Sep 2017 20:34:12 GMT
WORKDIR /spiped
# Mon, 18 Sep 2017 20:34:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 18 Sep 2017 20:34:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 20:34:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d205563e2d029926468c15b3364db40c111d2f405f8b65d428c928ba9d9387`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2630272b3a28f22738071985f4c6609d7059e9231b7e85782e33e21ba01499`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 MB (1286001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0b6898239af536fee2dab6d286d533baa963d3f5280eda5c257c4fc4091ea`  
		Last Modified: Mon, 18 Sep 2017 20:34:49 GMT  
		Size: 467.8 KB (467801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b55567ca85fe7dace6945ef21af8fef3f06f5a546b3e2f15f57f12c5f717f9`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4dd865d91c499db3f031f39c103f1352b16d6178a7257d73f4c0e4c0aca38f`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:6b56a3985d92a6c90dd8c387fd5c75efc02f08ce0c413fc77de15b636e515a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:d5cd5b37ff6be6b0e14edaee1519186f410fcde1b9683f4d6b151e253bb8caa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba695b93e70f0f9a022e521e1d41c6e76a49aa780c5b847a8207c542dca2509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 20:33:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 18 Sep 2017 20:34:00 GMT
RUN apk add --no-cache libssl1.0
# Mon, 18 Sep 2017 20:34:00 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 18 Sep 2017 20:34:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 18 Sep 2017 20:34:12 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 18 Sep 2017 20:34:12 GMT
VOLUME [/spiped]
# Mon, 18 Sep 2017 20:34:12 GMT
WORKDIR /spiped
# Mon, 18 Sep 2017 20:34:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 18 Sep 2017 20:34:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 20:34:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d205563e2d029926468c15b3364db40c111d2f405f8b65d428c928ba9d9387`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2630272b3a28f22738071985f4c6609d7059e9231b7e85782e33e21ba01499`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 1.3 MB (1286001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a0b6898239af536fee2dab6d286d533baa963d3f5280eda5c257c4fc4091ea`  
		Last Modified: Mon, 18 Sep 2017 20:34:49 GMT  
		Size: 467.8 KB (467801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b55567ca85fe7dace6945ef21af8fef3f06f5a546b3e2f15f57f12c5f717f9`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4dd865d91c499db3f031f39c103f1352b16d6178a7257d73f4c0e4c0aca38f`  
		Last Modified: Mon, 18 Sep 2017 20:34:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:c57e355fbdf3967a2129c90cd9662e3ec730c81f9f2457452419143c4c268eac
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
$ docker pull spiped@sha256:c62f6b3d9cf2d56faa4660339029179f662a881948963116b00df97b7a338b2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53998773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808fa1986f7e8792f3692d37d6e235d7d57c0657b40ad9f8f06f7d1c3e479282`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:00:39 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 10 Oct 2017 04:00:45 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 10 Oct 2017 04:00:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 10 Oct 2017 04:01:06 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 04:01:06 GMT
VOLUME [/spiped]
# Tue, 10 Oct 2017 04:01:06 GMT
WORKDIR /spiped
# Tue, 10 Oct 2017 04:01:06 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 10 Oct 2017 04:01:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 04:01:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a14b2bf417a5c3900a6dcd789cefa89f52f8c48fde065f41da0872a6723b98`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69585cfe36bff4c8a38f5f8e60a1deacb6b1b162eca062c81b7602536fe4034`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 2.1 MB (2091838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2ec815d4f4867e25513341a94063446b820b66761ed1a6e973c0f524537cd3`  
		Last Modified: Tue, 10 Oct 2017 04:01:25 GMT  
		Size: 6.8 MB (6775658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7449aff4a93f67844e1ba908f888d94c7a2a1805a68399d01064058ccbdd9c`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bcfb16bbd9c91bce4e97c72759c73e88437f3addcbcaccab673d778d012cdb`  
		Last Modified: Tue, 10 Oct 2017 04:01:24 GMT  
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
$ docker pull spiped@sha256:629255b01d9677186a020f4a756e56fc5c796a5d03e115c1f431386ef82bd2e8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49223513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d5a026a9d3bf0c0889dd73ab3443caef3676c13fce50ad6c33a95e00cc264`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:23 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:13:35 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:13:36 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:13:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:14:11 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:11 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:14:12 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:14:12 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13db9238bfa9ee7b2809157d4b2b1df0b3336b3dfafe5ce1a1fb90d9edcd9822`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4106f3e52252b4004ac7a95bbd0f0e1573997b59fea5003ba92a62bb73c865`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 1.8 MB (1774837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec6b345f297dc7e967db32120cf1dd92b0ffc197b823da410d892b63ae288fb`  
		Last Modified: Mon, 09 Oct 2017 22:14:34 GMT  
		Size: 5.6 MB (5604520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378d3d248da13414bd4499007ff19a9c8244f748070cd7ed884143b9e2c728b6`  
		Last Modified: Mon, 09 Oct 2017 22:14:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e886800ce0a1106d2c87a2df8fd5def797ca3bafa2e45bec086d4b686c98402`  
		Last Modified: Mon, 09 Oct 2017 22:14:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:6f3db62bbafd656d7ca06487e1c0cbf1bdf095dcd1d3c7171e3a893b2e71ce00
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50837139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9de9fc5ec123db250c5681033a43e5417881603719a189c6b37c272105fe4b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:22:19 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Sat, 09 Sep 2017 02:22:29 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:22:29 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 09 Sep 2017 02:22:30 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 09 Sep 2017 02:22:31 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 09 Sep 2017 02:24:05 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Sat, 09 Sep 2017 02:24:05 GMT
VOLUME [/spiped]
# Sat, 09 Sep 2017 02:24:06 GMT
WORKDIR /spiped
# Sat, 09 Sep 2017 02:24:07 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Sat, 09 Sep 2017 02:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Sep 2017 02:24:08 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53a4c72a860194e77a1412f7084594cb2e22770f08398c6d6e1ef7b135e0d3`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc31f7419ed7686b13f5780b41ace9c717597dd10e065944a81a63bbc27417b`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 1.8 MB (1825805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17800646da7388cf54e384ede2d46ae5c6382e038a7bc1ca62c5e0edadaae128`  
		Last Modified: Sat, 09 Sep 2017 02:24:28 GMT  
		Size: 6.1 MB (6105065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f11c48633a27431ce757b1913e7d5aee029b7c5c78b754972363ed1d892d0`  
		Last Modified: Sat, 09 Sep 2017 02:24:25 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a96444a24e8994fecb4ba73cdf9daf341b65ad09406359e6d95d8407fef199`  
		Last Modified: Sat, 09 Sep 2017 02:24:26 GMT  
		Size: 350.0 B  
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
$ docker pull spiped@sha256:b8f0c6ffe26d08dc94e6fdf6ce7aceedfcd614dd49bd7a2011b2732ac751448c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53857286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419c3bd7f08503497054b1f131cb88f82fb98afc588184f8d2f193ca5b3ca67d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:41 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 08 Sep 2017 01:18:47 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Sep 2017 01:18:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Sep 2017 01:19:31 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:19:31 GMT
VOLUME [/spiped]
# Fri, 08 Sep 2017 01:19:32 GMT
WORKDIR /spiped
# Fri, 08 Sep 2017 01:19:32 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 08 Sep 2017 01:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:19:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b1985b34e4ce152eb529fd081080743578653e0e27be7f616516be22e36ef3`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6790fe71be54730002df9c8370ccb065d369850177885d0f22eeb30ddca944f8`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 1.8 MB (1763122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cbd888cd0ac34fdc565893a4f4266d1acdc33ac5c7684db18a57551501b6ad`  
		Last Modified: Fri, 08 Sep 2017 01:19:46 GMT  
		Size: 6.7 MB (6715225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39784baba7d2b02f931a0c8c1860eab8c1407deaa47777b0803c5d0bdecd8935`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3150362cd94a0fdc887e9fb590d9e567b10dda4c5ef6b1864276f64b0dd896ba`  
		Last Modified: Fri, 08 Sep 2017 01:19:44 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:a428fe2e69ce4ba30713c44547427920588d90bc2bbefe0c5b94dcf8c3cf1aba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54470610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c165df0881a7a47469404eca7089b3d97f26d2559116d907ec14245baee52e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:05:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Mon, 09 Oct 2017 22:05:50 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 09 Oct 2017 22:05:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 09 Oct 2017 22:06:15 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:06:15 GMT
VOLUME [/spiped]
# Mon, 09 Oct 2017 22:06:15 GMT
WORKDIR /spiped
# Mon, 09 Oct 2017 22:06:16 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:06:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:06:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2552b6a37c26f929a9282490858ccbf9c896a10d2a145fcac347c3c4330b9c15`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6cf21818efef4f6b6ce8a05c586c0f5da02b0521fe08704474bfe572b76313`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 1.8 MB (1825799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f9128de48b233e171ce3d1f9b6081312bce46fe6ce8565fccc54a48f672657`  
		Last Modified: Mon, 09 Oct 2017 22:06:30 GMT  
		Size: 7.7 MB (7669868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be35415d03daadefce7ea3ac26b3c19f6a9ee32861145ddde6d62a523d4a1692`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64468932cce5679c58b6205ec4c1b37b391ac511a50304b00388187f5a54504a`  
		Last Modified: Mon, 09 Oct 2017 22:06:27 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
