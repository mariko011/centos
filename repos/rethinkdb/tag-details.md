<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2.0.4`](#rethinkdb204)
-	[`rethinkdb:2.0`](#rethinkdb20)
-	[`rethinkdb:2.1.6`](#rethinkdb216)
-	[`rethinkdb:2.1`](#rethinkdb21)
-	[`rethinkdb:2.2.6`](#rethinkdb226)
-	[`rethinkdb:2.2`](#rethinkdb22)
-	[`rethinkdb:2.3.4`](#rethinkdb234)
-	[`rethinkdb:2.3.5`](#rethinkdb235)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2.0.4`

```console
$ docker pull rethinkdb@sha256:e40565c77c85b56e5cdb346da98c787cf9ad013fcc186a4ac2b41473723a18f7
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82814035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca67d20108eb93ce6c0ea58507139ee9d15de5a6fceb57426397893a7b71c4f`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:53 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 10 May 2017 15:49:10 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:49:11 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:49:12 GMT
WORKDIR /data
# Wed, 10 May 2017 15:49:12 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:49:13 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ff0bd7a4f5155824994e7f67025460a4e07e58e4782895ca72b780e661da78`  
		Last Modified: Sat, 13 May 2017 18:31:07 GMT  
		Size: 30.2 MB (30228269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ae88d490c89eee60b70a8f4ca905611af7806f531a8098be3f58a47f9d0ae3`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:e40565c77c85b56e5cdb346da98c787cf9ad013fcc186a4ac2b41473723a18f7
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82814035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca67d20108eb93ce6c0ea58507139ee9d15de5a6fceb57426397893a7b71c4f`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:53 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 10 May 2017 15:49:10 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:49:11 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:49:12 GMT
WORKDIR /data
# Wed, 10 May 2017 15:49:12 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:49:13 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ff0bd7a4f5155824994e7f67025460a4e07e58e4782895ca72b780e661da78`  
		Last Modified: Sat, 13 May 2017 18:31:07 GMT  
		Size: 30.2 MB (30228269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ae88d490c89eee60b70a8f4ca905611af7806f531a8098be3f58a47f9d0ae3`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:36dcefd40a11c40fda183bbd71b5da568a6b77344c2bc70d71ec686e44f23a09
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77211042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cc716969dd8c8edee5af0c5060ae5c3d00edaadf03a470f1dd3457baedabb5`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:49:33 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 10 May 2017 15:49:49 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:49:50 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:49:51 GMT
WORKDIR /data
# Wed, 10 May 2017 15:49:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:49:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7d4bcdae5eeb60e2c7cbb74f46ff9561baffa39e191fc798f6b7bc9ee849ad`  
		Last Modified: Sat, 13 May 2017 18:32:02 GMT  
		Size: 24.6 MB (24625276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4389402eb66e6d1dce2f57487108cacbbc3d240ec92c5957d4b27e67473208`  
		Last Modified: Sat, 13 May 2017 18:31:58 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:36dcefd40a11c40fda183bbd71b5da568a6b77344c2bc70d71ec686e44f23a09
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77211042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cc716969dd8c8edee5af0c5060ae5c3d00edaadf03a470f1dd3457baedabb5`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:49:33 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 10 May 2017 15:49:49 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:49:50 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:49:51 GMT
WORKDIR /data
# Wed, 10 May 2017 15:49:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:49:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7d4bcdae5eeb60e2c7cbb74f46ff9561baffa39e191fc798f6b7bc9ee849ad`  
		Last Modified: Sat, 13 May 2017 18:32:02 GMT  
		Size: 24.6 MB (24625276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4389402eb66e6d1dce2f57487108cacbbc3d240ec92c5957d4b27e67473208`  
		Last Modified: Sat, 13 May 2017 18:31:58 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:994809c3a20a779cf615f160e32447c27f96f09e587752fa8cfb86c9ed3de6fe
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77387027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851ae9a4b296788710598da472d1249232a5eda5eb335e7deb07682ad2b35e8`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:50:12 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 10 May 2017 15:50:27 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:50:27 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:50:28 GMT
WORKDIR /data
# Wed, 10 May 2017 15:50:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:50:30 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0292dda6787da4ad17ef54a56aeeaf9b0f85d66c810bf05eb332fe1f7873884`  
		Last Modified: Sat, 13 May 2017 18:32:56 GMT  
		Size: 24.8 MB (24801261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4783e274c90f4bdc3c6cf4a91a0956f7091614e2bd04bc55d11eb140468ba2bb`  
		Last Modified: Sat, 13 May 2017 18:32:49 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:994809c3a20a779cf615f160e32447c27f96f09e587752fa8cfb86c9ed3de6fe
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77387027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851ae9a4b296788710598da472d1249232a5eda5eb335e7deb07682ad2b35e8`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:50:12 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 10 May 2017 15:50:27 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:50:27 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:50:28 GMT
WORKDIR /data
# Wed, 10 May 2017 15:50:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:50:30 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0292dda6787da4ad17ef54a56aeeaf9b0f85d66c810bf05eb332fe1f7873884`  
		Last Modified: Sat, 13 May 2017 18:32:56 GMT  
		Size: 24.8 MB (24801261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4783e274c90f4bdc3c6cf4a91a0956f7091614e2bd04bc55d11eb140468ba2bb`  
		Last Modified: Sat, 13 May 2017 18:32:49 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:114ab59756e6ca7c3f40f0e493625e88d9db5c3d89238c9c512bc3da0cdfda0f
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77898716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537fc307c554ce78e38c4fb9e71a4fa7264c8606b45d9b8f6793159c4681ab2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:50:49 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Wed, 10 May 2017 15:51:06 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:51:07 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:51:07 GMT
WORKDIR /data
# Wed, 10 May 2017 15:51:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:51:09 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb45e2101c5e2b8d31d56d5c20521dc49b1924a90926d3b947fc221ebacbd917`  
		Last Modified: Sat, 13 May 2017 18:33:50 GMT  
		Size: 25.3 MB (25312950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8aa4baf9cc1b0ee09996ca9e56f04c9e998357b603b7000938324cb027ad3b`  
		Last Modified: Sat, 13 May 2017 18:33:46 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:29640c7d5015832c40305ad5dcc5d0996ce79b87f7e32d2fd99c9d65ad9414d4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77902652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66f932ecd3ce1f93bfa699daca84403cbf2876eaadf429629ed658b9dbb4879`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:16 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 10 May 2017 15:48:31 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:48:31 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:48:32 GMT
WORKDIR /data
# Wed, 10 May 2017 15:48:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:48:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280e377996523f6169c34fc205cff1994791c4e54e0bd0f4605fa181ca4fc28e`  
		Last Modified: Sat, 13 May 2017 18:34:22 GMT  
		Size: 25.3 MB (25316886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3b956300ffdfc175ebab0ebc27fe5229194150f1d8001898b9886f9e268d3`  
		Last Modified: Sat, 13 May 2017 18:34:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:29640c7d5015832c40305ad5dcc5d0996ce79b87f7e32d2fd99c9d65ad9414d4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77902652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66f932ecd3ce1f93bfa699daca84403cbf2876eaadf429629ed658b9dbb4879`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:16 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 10 May 2017 15:48:31 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:48:31 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:48:32 GMT
WORKDIR /data
# Wed, 10 May 2017 15:48:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:48:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280e377996523f6169c34fc205cff1994791c4e54e0bd0f4605fa181ca4fc28e`  
		Last Modified: Sat, 13 May 2017 18:34:22 GMT  
		Size: 25.3 MB (25316886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3b956300ffdfc175ebab0ebc27fe5229194150f1d8001898b9886f9e268d3`  
		Last Modified: Sat, 13 May 2017 18:34:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:29640c7d5015832c40305ad5dcc5d0996ce79b87f7e32d2fd99c9d65ad9414d4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77902652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66f932ecd3ce1f93bfa699daca84403cbf2876eaadf429629ed658b9dbb4879`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:16 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 10 May 2017 15:48:31 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:48:31 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:48:32 GMT
WORKDIR /data
# Wed, 10 May 2017 15:48:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:48:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280e377996523f6169c34fc205cff1994791c4e54e0bd0f4605fa181ca4fc28e`  
		Last Modified: Sat, 13 May 2017 18:34:22 GMT  
		Size: 25.3 MB (25316886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3b956300ffdfc175ebab0ebc27fe5229194150f1d8001898b9886f9e268d3`  
		Last Modified: Sat, 13 May 2017 18:34:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:29640c7d5015832c40305ad5dcc5d0996ce79b87f7e32d2fd99c9d65ad9414d4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77902652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66f932ecd3ce1f93bfa699daca84403cbf2876eaadf429629ed658b9dbb4879`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:48:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 10 May 2017 15:48:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 10 May 2017 15:48:15 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 10 May 2017 15:48:16 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 10 May 2017 15:48:31 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:48:31 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:48:32 GMT
WORKDIR /data
# Wed, 10 May 2017 15:48:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 10 May 2017 15:48:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e89eca52ec3381b2a06945910f077e0ab3433ae6d2980a2923e7fb6fb080f`  
		Last Modified: Sat, 13 May 2017 18:31:00 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c929bfcead4f6d44b80b4a6f5e116cbf97d630de55fdd7fdb90a913465f89f`  
		Last Modified: Sat, 13 May 2017 18:31:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280e377996523f6169c34fc205cff1994791c4e54e0bd0f4605fa181ca4fc28e`  
		Last Modified: Sat, 13 May 2017 18:34:22 GMT  
		Size: 25.3 MB (25316886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3b956300ffdfc175ebab0ebc27fe5229194150f1d8001898b9886f9e268d3`  
		Last Modified: Sat, 13 May 2017 18:34:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
