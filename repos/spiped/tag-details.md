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
