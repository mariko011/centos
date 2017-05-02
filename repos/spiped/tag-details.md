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
$ docker pull spiped@sha256:370292a14ea7165a65bdddce3a45708441c08e21c9876b37b38435d201270546
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57046593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ebf5cd1a795f981853fee80fface6f34f9c3e49c87ca93118708a19d5a9a7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:44:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 25 Apr 2017 05:44:37 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 17:25:47 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:25:48 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:25:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:16 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 01 May 2017 17:26:17 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:17 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:19 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd94e8692b6cd6ad1d03e61b381a318004f2f11747fe09ae76f7131858d06f34`  
		Last Modified: Tue, 25 Apr 2017 22:01:40 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7846e5b09cf9fcc73403b1aecd1966f9d245b2a04ef001f04cca8939cf6213f9`  
		Last Modified: Tue, 25 Apr 2017 22:01:37 GMT  
		Size: 1.8 MB (1804459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c225bd8569ff911c30d6b71b2664278dfe187f0072ac6c917914215bb517e49`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 2.7 MB (2689360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa7ea2ead77c139087ce381c4131486c4d9aec1797fdef3fd4f241be2facf4b`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bcf79c32ad40bfd5c25c78f410ad295aa5a755b2abfb39bf2206e5bd5e5fa6`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:370292a14ea7165a65bdddce3a45708441c08e21c9876b37b38435d201270546
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57046593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ebf5cd1a795f981853fee80fface6f34f9c3e49c87ca93118708a19d5a9a7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:44:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 25 Apr 2017 05:44:37 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 17:25:47 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:25:48 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:25:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:16 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 01 May 2017 17:26:17 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:17 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:19 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd94e8692b6cd6ad1d03e61b381a318004f2f11747fe09ae76f7131858d06f34`  
		Last Modified: Tue, 25 Apr 2017 22:01:40 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7846e5b09cf9fcc73403b1aecd1966f9d245b2a04ef001f04cca8939cf6213f9`  
		Last Modified: Tue, 25 Apr 2017 22:01:37 GMT  
		Size: 1.8 MB (1804459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c225bd8569ff911c30d6b71b2664278dfe187f0072ac6c917914215bb517e49`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 2.7 MB (2689360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa7ea2ead77c139087ce381c4131486c4d9aec1797fdef3fd4f241be2facf4b`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bcf79c32ad40bfd5c25c78f410ad295aa5a755b2abfb39bf2206e5bd5e5fa6`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1`

```console
$ docker pull spiped@sha256:370292a14ea7165a65bdddce3a45708441c08e21c9876b37b38435d201270546
```

-	Platforms:
	-	linux; amd64

### `spiped:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57046593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ebf5cd1a795f981853fee80fface6f34f9c3e49c87ca93118708a19d5a9a7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:44:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 25 Apr 2017 05:44:37 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 17:25:47 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:25:48 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:25:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:16 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 01 May 2017 17:26:17 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:17 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:19 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd94e8692b6cd6ad1d03e61b381a318004f2f11747fe09ae76f7131858d06f34`  
		Last Modified: Tue, 25 Apr 2017 22:01:40 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7846e5b09cf9fcc73403b1aecd1966f9d245b2a04ef001f04cca8939cf6213f9`  
		Last Modified: Tue, 25 Apr 2017 22:01:37 GMT  
		Size: 1.8 MB (1804459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c225bd8569ff911c30d6b71b2664278dfe187f0072ac6c917914215bb517e49`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 2.7 MB (2689360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa7ea2ead77c139087ce381c4131486c4d9aec1797fdef3fd4f241be2facf4b`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bcf79c32ad40bfd5c25c78f410ad295aa5a755b2abfb39bf2206e5bd5e5fa6`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:370292a14ea7165a65bdddce3a45708441c08e21c9876b37b38435d201270546
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57046593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ebf5cd1a795f981853fee80fface6f34f9c3e49c87ca93118708a19d5a9a7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:44:28 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Tue, 25 Apr 2017 05:44:37 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 17:25:47 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:25:48 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:25:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:16 GMT
RUN set -x &&	buildDeps='libssl-dev gcc make curl ca-certificates' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Mon, 01 May 2017 17:26:17 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:17 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:19 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd94e8692b6cd6ad1d03e61b381a318004f2f11747fe09ae76f7131858d06f34`  
		Last Modified: Tue, 25 Apr 2017 22:01:40 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7846e5b09cf9fcc73403b1aecd1966f9d245b2a04ef001f04cca8939cf6213f9`  
		Last Modified: Tue, 25 Apr 2017 22:01:37 GMT  
		Size: 1.8 MB (1804459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c225bd8569ff911c30d6b71b2664278dfe187f0072ac6c917914215bb517e49`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 2.7 MB (2689360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa7ea2ead77c139087ce381c4131486c4d9aec1797fdef3fd4f241be2facf4b`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bcf79c32ad40bfd5c25c78f410ad295aa5a755b2abfb39bf2206e5bd5e5fa6`  
		Last Modified: Mon, 01 May 2017 17:27:14 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.0-alpine`

```console
$ docker pull spiped@sha256:c18dface10d83c4d39d78cdcb89d8a03ac9afe959c1cf5e55571d023d3a7a5c2
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3226474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca514d633d9d22883ea7d3cd68a2ff7dc1c0e96b4cf83901b1c87e8f48da33b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Mon, 01 May 2017 17:26:38 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 01 May 2017 17:26:49 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:50 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f1324b50301f3cad3e97455e23fee2b37876848fe8459129c97584f9b9d862`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 77.5 KB (77517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a34a1a1349c916c2b3e31b85689e984273161f8f9aa5b4611d751feeb38759`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794be17ab23d081e5ca413bbbde6bb31fe62a7739847d87a103f80b46ae42c50`  
		Last Modified: Mon, 01 May 2017 17:28:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:c18dface10d83c4d39d78cdcb89d8a03ac9afe959c1cf5e55571d023d3a7a5c2
```

-	Platforms:
	-	linux; amd64

### `spiped:1.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3226474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca514d633d9d22883ea7d3cd68a2ff7dc1c0e96b4cf83901b1c87e8f48da33b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Mon, 01 May 2017 17:26:38 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 01 May 2017 17:26:49 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:50 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f1324b50301f3cad3e97455e23fee2b37876848fe8459129c97584f9b9d862`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 77.5 KB (77517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a34a1a1349c916c2b3e31b85689e984273161f8f9aa5b4611d751feeb38759`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794be17ab23d081e5ca413bbbde6bb31fe62a7739847d87a103f80b46ae42c50`  
		Last Modified: Mon, 01 May 2017 17:28:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:c18dface10d83c4d39d78cdcb89d8a03ac9afe959c1cf5e55571d023d3a7a5c2
```

-	Platforms:
	-	linux; amd64

### `spiped:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3226474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca514d633d9d22883ea7d3cd68a2ff7dc1c0e96b4cf83901b1c87e8f48da33b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Mon, 01 May 2017 17:26:38 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 01 May 2017 17:26:49 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:50 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f1324b50301f3cad3e97455e23fee2b37876848fe8459129c97584f9b9d862`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 77.5 KB (77517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a34a1a1349c916c2b3e31b85689e984273161f8f9aa5b4611d751feeb38759`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794be17ab23d081e5ca413bbbde6bb31fe62a7739847d87a103f80b46ae42c50`  
		Last Modified: Mon, 01 May 2017 17:28:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:c18dface10d83c4d39d78cdcb89d8a03ac9afe959c1cf5e55571d023d3a7a5c2
```

-	Platforms:
	-	linux; amd64

### `spiped:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3226474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca514d633d9d22883ea7d3cd68a2ff7dc1c0e96b4cf83901b1c87e8f48da33b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:45:05 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 03 Mar 2017 23:45:07 GMT
RUN apk add --no-cache libssl1.0
# Mon, 01 May 2017 17:26:38 GMT
ENV SPIPED_VERSION=1.6.0
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Mon, 01 May 2017 17:26:39 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Mon, 01 May 2017 17:26:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Mon, 01 May 2017 17:26:49 GMT
VOLUME [/spiped]
# Mon, 01 May 2017 17:26:50 GMT
WORKDIR /spiped
# Mon, 01 May 2017 17:26:51 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Mon, 01 May 2017 17:26:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:26:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9d4c7fbb204f76db0eec84700f07b11ed7e19a3a275d8478f1fc01f1c06c5`  
		Last Modified: Sat, 04 Mar 2017 06:07:41 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd75fff260ead6da1ae96b3991792dfa9dad1325696114168c648c460b626a`  
		Last Modified: Sat, 04 Mar 2017 06:07:39 GMT  
		Size: 1.2 MB (1242014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f1324b50301f3cad3e97455e23fee2b37876848fe8459129c97584f9b9d862`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 77.5 KB (77517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a34a1a1349c916c2b3e31b85689e984273161f8f9aa5b4611d751feeb38759`  
		Last Modified: Mon, 01 May 2017 17:28:34 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794be17ab23d081e5ca413bbbde6bb31fe62a7739847d87a103f80b46ae42c50`  
		Last Modified: Mon, 01 May 2017 17:28:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
