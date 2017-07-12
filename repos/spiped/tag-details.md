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
$ docker pull spiped@sha256:f6c17fbe8e94479f2f44de5b07167f40c037e797c6ef34d99325326759cdbc4c
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53981777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0975fd884614f642747e2344eff88e359e5911d236d9ced2eb6cbfe228151fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Wed, 12 Jul 2017 17:39:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 12 Jul 2017 17:39:52 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 12 Jul 2017 17:39:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Jul 2017 17:40:14 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Jul 2017 17:40:14 GMT
VOLUME [/spiped]
# Wed, 12 Jul 2017 17:40:14 GMT
WORKDIR /spiped
# Wed, 12 Jul 2017 17:40:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Jul 2017 17:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Jul 2017 17:40:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc55a5c7ba6531d540886fa2375419bc2d3b905cf977eb2f46fe0a291fbbbc76`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0127d18354bc70a90fd06f0e3cb2931a6b4c0e6b88fb75855dae0c2deabb520a`  
		Last Modified: Wed, 12 Jul 2017 17:40:28 GMT  
		Size: 2.1 MB (2093228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d655d914a5e730ab4521e71bf3fedbeac61a5a9f15645173c2a487f4ae09ce0`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 6.7 MB (6746569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1538dc6500ebbbf464630ab9c2de4d6a3e3af8f484ebe04d3f14583432c10e7f`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f61b3bcaa6e06b00c16777d15d9a2fc9609771cb38663aa4317690f5d02a3`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:f6c17fbe8e94479f2f44de5b07167f40c037e797c6ef34d99325326759cdbc4c
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53981777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0975fd884614f642747e2344eff88e359e5911d236d9ced2eb6cbfe228151fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Wed, 12 Jul 2017 17:39:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 12 Jul 2017 17:39:52 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 12 Jul 2017 17:39:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Jul 2017 17:40:14 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Jul 2017 17:40:14 GMT
VOLUME [/spiped]
# Wed, 12 Jul 2017 17:40:14 GMT
WORKDIR /spiped
# Wed, 12 Jul 2017 17:40:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Jul 2017 17:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Jul 2017 17:40:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc55a5c7ba6531d540886fa2375419bc2d3b905cf977eb2f46fe0a291fbbbc76`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0127d18354bc70a90fd06f0e3cb2931a6b4c0e6b88fb75855dae0c2deabb520a`  
		Last Modified: Wed, 12 Jul 2017 17:40:28 GMT  
		Size: 2.1 MB (2093228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d655d914a5e730ab4521e71bf3fedbeac61a5a9f15645173c2a487f4ae09ce0`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 6.7 MB (6746569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1538dc6500ebbbf464630ab9c2de4d6a3e3af8f484ebe04d3f14583432c10e7f`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f61b3bcaa6e06b00c16777d15d9a2fc9609771cb38663aa4317690f5d02a3`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:f6c17fbe8e94479f2f44de5b07167f40c037e797c6ef34d99325326759cdbc4c
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53981777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0975fd884614f642747e2344eff88e359e5911d236d9ced2eb6cbfe228151fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Wed, 12 Jul 2017 17:39:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 12 Jul 2017 17:39:52 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 12 Jul 2017 17:39:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Jul 2017 17:40:14 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Jul 2017 17:40:14 GMT
VOLUME [/spiped]
# Wed, 12 Jul 2017 17:40:14 GMT
WORKDIR /spiped
# Wed, 12 Jul 2017 17:40:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Jul 2017 17:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Jul 2017 17:40:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc55a5c7ba6531d540886fa2375419bc2d3b905cf977eb2f46fe0a291fbbbc76`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0127d18354bc70a90fd06f0e3cb2931a6b4c0e6b88fb75855dae0c2deabb520a`  
		Last Modified: Wed, 12 Jul 2017 17:40:28 GMT  
		Size: 2.1 MB (2093228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d655d914a5e730ab4521e71bf3fedbeac61a5a9f15645173c2a487f4ae09ce0`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 6.7 MB (6746569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1538dc6500ebbbf464630ab9c2de4d6a3e3af8f484ebe04d3f14583432c10e7f`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f61b3bcaa6e06b00c16777d15d9a2fc9609771cb38663aa4317690f5d02a3`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:f6c17fbe8e94479f2f44de5b07167f40c037e797c6ef34d99325326759cdbc4c
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53981777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0975fd884614f642747e2344eff88e359e5911d236d9ced2eb6cbfe228151fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Wed, 12 Jul 2017 17:39:48 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 12 Jul 2017 17:39:52 GMT
RUN apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 12 Jul 2017 17:39:52 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 12 Jul 2017 17:39:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 12 Jul 2017 17:40:14 GMT
RUN set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 12 Jul 2017 17:40:14 GMT
VOLUME [/spiped]
# Wed, 12 Jul 2017 17:40:14 GMT
WORKDIR /spiped
# Wed, 12 Jul 2017 17:40:15 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Wed, 12 Jul 2017 17:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Jul 2017 17:40:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc55a5c7ba6531d540886fa2375419bc2d3b905cf977eb2f46fe0a291fbbbc76`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0127d18354bc70a90fd06f0e3cb2931a6b4c0e6b88fb75855dae0c2deabb520a`  
		Last Modified: Wed, 12 Jul 2017 17:40:28 GMT  
		Size: 2.1 MB (2093228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d655d914a5e730ab4521e71bf3fedbeac61a5a9f15645173c2a487f4ae09ce0`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 6.7 MB (6746569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1538dc6500ebbbf464630ab9c2de4d6a3e3af8f484ebe04d3f14583432c10e7f`  
		Last Modified: Wed, 12 Jul 2017 17:40:29 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f61b3bcaa6e06b00c16777d15d9a2fc9609771cb38663aa4317690f5d02a3`  
		Last Modified: Wed, 12 Jul 2017 17:40:27 GMT  
		Size: 342.0 B  
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
