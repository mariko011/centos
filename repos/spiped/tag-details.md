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
$ docker pull spiped@sha256:b1a5cf1942f52db5ae19dd6332bb303498f25cca272cda2eb4a684ead1f349f6
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57106737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd7663374e59fed71d44c1c082be763ef1070b54d53aa62739d6ba2f0170ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 11:45:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Jun 2017 11:45:55 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:45:56 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 23 Jun 2017 11:45:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 23 Jun 2017 11:45:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 23 Jun 2017 11:46:24 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 11:46:25 GMT
VOLUME [/spiped]
# Fri, 23 Jun 2017 11:46:26 GMT
WORKDIR /spiped
# Fri, 23 Jun 2017 11:46:28 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Jun 2017 11:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:46:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827974bb34824040f17dfb5080e7fb2755323e86161cdc7db98e54f87b00acd1`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404a7ca213ac304a9119da94286308aa26bba903b10cda477246fcac74c090f4`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 1.8 MB (1801461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfad2d68b96ec0afe5eab7e71360838cd3b9480997e5add9adbe1759ef92639`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 2.7 MB (2687964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828dff407dadb0d8399cc17225fc4e8e6baeea88e6f596f4d7d34834e920e937`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d85008320d52fc8009e6455e62b31a38e857fcf6f51e0da7c77d019bb08ac`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:b1a5cf1942f52db5ae19dd6332bb303498f25cca272cda2eb4a684ead1f349f6
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57106737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd7663374e59fed71d44c1c082be763ef1070b54d53aa62739d6ba2f0170ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 11:45:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Jun 2017 11:45:55 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:45:56 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 23 Jun 2017 11:45:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 23 Jun 2017 11:45:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 23 Jun 2017 11:46:24 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 11:46:25 GMT
VOLUME [/spiped]
# Fri, 23 Jun 2017 11:46:26 GMT
WORKDIR /spiped
# Fri, 23 Jun 2017 11:46:28 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Jun 2017 11:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:46:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827974bb34824040f17dfb5080e7fb2755323e86161cdc7db98e54f87b00acd1`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404a7ca213ac304a9119da94286308aa26bba903b10cda477246fcac74c090f4`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 1.8 MB (1801461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfad2d68b96ec0afe5eab7e71360838cd3b9480997e5add9adbe1759ef92639`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 2.7 MB (2687964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828dff407dadb0d8399cc17225fc4e8e6baeea88e6f596f4d7d34834e920e937`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d85008320d52fc8009e6455e62b31a38e857fcf6f51e0da7c77d019bb08ac`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:b1a5cf1942f52db5ae19dd6332bb303498f25cca272cda2eb4a684ead1f349f6
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57106737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd7663374e59fed71d44c1c082be763ef1070b54d53aa62739d6ba2f0170ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 11:45:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Jun 2017 11:45:55 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:45:56 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 23 Jun 2017 11:45:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 23 Jun 2017 11:45:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 23 Jun 2017 11:46:24 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 11:46:25 GMT
VOLUME [/spiped]
# Fri, 23 Jun 2017 11:46:26 GMT
WORKDIR /spiped
# Fri, 23 Jun 2017 11:46:28 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Jun 2017 11:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:46:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827974bb34824040f17dfb5080e7fb2755323e86161cdc7db98e54f87b00acd1`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404a7ca213ac304a9119da94286308aa26bba903b10cda477246fcac74c090f4`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 1.8 MB (1801461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfad2d68b96ec0afe5eab7e71360838cd3b9480997e5add9adbe1759ef92639`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 2.7 MB (2687964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828dff407dadb0d8399cc17225fc4e8e6baeea88e6f596f4d7d34834e920e937`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d85008320d52fc8009e6455e62b31a38e857fcf6f51e0da7c77d019bb08ac`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:b1a5cf1942f52db5ae19dd6332bb303498f25cca272cda2eb4a684ead1f349f6
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57106737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd7663374e59fed71d44c1c082be763ef1070b54d53aa62739d6ba2f0170ad2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 11:45:46 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Jun 2017 11:45:55 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 11:45:56 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 23 Jun 2017 11:45:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 23 Jun 2017 11:45:58 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 23 Jun 2017 11:46:24 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 11:46:25 GMT
VOLUME [/spiped]
# Fri, 23 Jun 2017 11:46:26 GMT
WORKDIR /spiped
# Fri, 23 Jun 2017 11:46:28 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Jun 2017 11:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 11:46:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827974bb34824040f17dfb5080e7fb2755323e86161cdc7db98e54f87b00acd1`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404a7ca213ac304a9119da94286308aa26bba903b10cda477246fcac74c090f4`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 1.8 MB (1801461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfad2d68b96ec0afe5eab7e71360838cd3b9480997e5add9adbe1759ef92639`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 2.7 MB (2687964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828dff407dadb0d8399cc17225fc4e8e6baeea88e6f596f4d7d34834e920e937`  
		Last Modified: Sun, 25 Jun 2017 01:45:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4d85008320d52fc8009e6455e62b31a38e857fcf6f51e0da7c77d019bb08ac`  
		Last Modified: Sun, 25 Jun 2017 01:44:59 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:2f234e0ba0e4012a1de85797d155d09f2fcc84f7c2c25da513d66fa31009532d
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3f75f497607b48792e05d8610047f724ffbe178eb01ed3df9e7945a9f8a3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 01:26:19 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 20 Jun 2017 01:26:23 GMT
RUN apk add --no-cache libssl1.0
# Tue, 20 Jun 2017 01:26:44 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 20 Jun 2017 01:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 20 Jun 2017 01:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 20 Jun 2017 01:26:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 20 Jun 2017 01:27:11 GMT
VOLUME [/spiped]
# Tue, 20 Jun 2017 01:27:12 GMT
WORKDIR /spiped
# Tue, 20 Jun 2017 01:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 20 Jun 2017 01:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:27:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730ba7b55e04a1f5771a177461e4ec757c5d068b36a67899d2d519f227b3a7d7`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d1cae0eeaeeba050bbeba86dfa448bb6cd0fc120a62fda21f3cc3fc5a18f77`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 MB (1284776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3310703de6dad59048efc8efa86ee90699e587943fc9b593b54c37512cc94866`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 77.5 KB (77522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad29c422d1761ccd5d982e1ceb471ebfed570c9a86489d154d8692f7b0b422`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd815e2e690764687868e06b8eb6a10e237020d9bd322ab75c3f57cb9de57cdf`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:2f234e0ba0e4012a1de85797d155d09f2fcc84f7c2c25da513d66fa31009532d
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3f75f497607b48792e05d8610047f724ffbe178eb01ed3df9e7945a9f8a3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 01:26:19 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 20 Jun 2017 01:26:23 GMT
RUN apk add --no-cache libssl1.0
# Tue, 20 Jun 2017 01:26:44 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 20 Jun 2017 01:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 20 Jun 2017 01:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 20 Jun 2017 01:26:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 20 Jun 2017 01:27:11 GMT
VOLUME [/spiped]
# Tue, 20 Jun 2017 01:27:12 GMT
WORKDIR /spiped
# Tue, 20 Jun 2017 01:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 20 Jun 2017 01:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:27:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730ba7b55e04a1f5771a177461e4ec757c5d068b36a67899d2d519f227b3a7d7`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d1cae0eeaeeba050bbeba86dfa448bb6cd0fc120a62fda21f3cc3fc5a18f77`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 MB (1284776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3310703de6dad59048efc8efa86ee90699e587943fc9b593b54c37512cc94866`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 77.5 KB (77522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad29c422d1761ccd5d982e1ceb471ebfed570c9a86489d154d8692f7b0b422`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd815e2e690764687868e06b8eb6a10e237020d9bd322ab75c3f57cb9de57cdf`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:2f234e0ba0e4012a1de85797d155d09f2fcc84f7c2c25da513d66fa31009532d
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3f75f497607b48792e05d8610047f724ffbe178eb01ed3df9e7945a9f8a3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 01:26:19 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 20 Jun 2017 01:26:23 GMT
RUN apk add --no-cache libssl1.0
# Tue, 20 Jun 2017 01:26:44 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 20 Jun 2017 01:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 20 Jun 2017 01:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 20 Jun 2017 01:26:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 20 Jun 2017 01:27:11 GMT
VOLUME [/spiped]
# Tue, 20 Jun 2017 01:27:12 GMT
WORKDIR /spiped
# Tue, 20 Jun 2017 01:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 20 Jun 2017 01:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:27:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730ba7b55e04a1f5771a177461e4ec757c5d068b36a67899d2d519f227b3a7d7`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d1cae0eeaeeba050bbeba86dfa448bb6cd0fc120a62fda21f3cc3fc5a18f77`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 MB (1284776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3310703de6dad59048efc8efa86ee90699e587943fc9b593b54c37512cc94866`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 77.5 KB (77522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad29c422d1761ccd5d982e1ceb471ebfed570c9a86489d154d8692f7b0b422`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd815e2e690764687868e06b8eb6a10e237020d9bd322ab75c3f57cb9de57cdf`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:2f234e0ba0e4012a1de85797d155d09f2fcc84f7c2c25da513d66fa31009532d
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3334297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3f75f497607b48792e05d8610047f724ffbe178eb01ed3df9e7945a9f8a3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 01:26:19 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 20 Jun 2017 01:26:23 GMT
RUN apk add --no-cache libssl1.0
# Tue, 20 Jun 2017 01:26:44 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 20 Jun 2017 01:26:45 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 20 Jun 2017 01:26:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 20 Jun 2017 01:26:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 20 Jun 2017 01:27:11 GMT
VOLUME [/spiped]
# Tue, 20 Jun 2017 01:27:12 GMT
WORKDIR /spiped
# Tue, 20 Jun 2017 01:27:14 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Tue, 20 Jun 2017 01:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 01:27:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730ba7b55e04a1f5771a177461e4ec757c5d068b36a67899d2d519f227b3a7d7`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d1cae0eeaeeba050bbeba86dfa448bb6cd0fc120a62fda21f3cc3fc5a18f77`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 1.3 MB (1284776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3310703de6dad59048efc8efa86ee90699e587943fc9b593b54c37512cc94866`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 77.5 KB (77522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad29c422d1761ccd5d982e1ceb471ebfed570c9a86489d154d8692f7b0b422`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd815e2e690764687868e06b8eb6a10e237020d9bd322ab75c3f57cb9de57cdf`  
		Last Modified: Sun, 25 Jun 2017 01:46:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
