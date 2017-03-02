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
$ docker pull rethinkdb@sha256:9eb43bfd39f9d8d253d91216fc80aeccffa9c7ea0d0c9a08a9e952db20bc61fc
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80669537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12920f20b9af561defc1ab223cd39edc782a58fc302a5aa091cd4c2491986cb0`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:15 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 28 Feb 2017 22:54:26 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:27 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:27 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:27 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:28 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8967697f843fc1b9f8986030a76deb85e09f5d4571a7baf0d06912fdf30fd72f`  
		Last Modified: Thu, 02 Mar 2017 03:41:54 GMT  
		Size: 29.3 MB (29304421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7a12b8ebdc9b7a816aab9c0cc59657f57866878c5e73c870119eb5ae8928ba`  
		Last Modified: Thu, 02 Mar 2017 03:41:45 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:9eb43bfd39f9d8d253d91216fc80aeccffa9c7ea0d0c9a08a9e952db20bc61fc
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80669537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12920f20b9af561defc1ab223cd39edc782a58fc302a5aa091cd4c2491986cb0`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:15 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 28 Feb 2017 22:54:26 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:27 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:27 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:27 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:28 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8967697f843fc1b9f8986030a76deb85e09f5d4571a7baf0d06912fdf30fd72f`  
		Last Modified: Thu, 02 Mar 2017 03:41:54 GMT  
		Size: 29.3 MB (29304421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7a12b8ebdc9b7a816aab9c0cc59657f57866878c5e73c870119eb5ae8928ba`  
		Last Modified: Thu, 02 Mar 2017 03:41:45 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:02cc5c36e43b9e4d42f3e54d186c14a35f8d3fdb8721217a92fd111024261b34
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75296450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5789e19cdf4197897707ca4fcfb2cedc9bf1f2efb9170cbfa3b77a5327a98a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:28 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 28 Feb 2017 22:54:39 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:40 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:40 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:40 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:41 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15cb5d855a891e94f4a2ffbfad196a642673c2d9b8ac6ec48201b6258aed5a`  
		Last Modified: Thu, 02 Mar 2017 03:42:44 GMT  
		Size: 23.9 MB (23931335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f92c6879bc72d3da73bb131a1f3de1ab0920f08842958c6d9ad4c771297d9b0`  
		Last Modified: Thu, 02 Mar 2017 03:42:34 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:02cc5c36e43b9e4d42f3e54d186c14a35f8d3fdb8721217a92fd111024261b34
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75296450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5789e19cdf4197897707ca4fcfb2cedc9bf1f2efb9170cbfa3b77a5327a98a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:28 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 28 Feb 2017 22:54:39 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:40 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:40 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:40 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:41 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15cb5d855a891e94f4a2ffbfad196a642673c2d9b8ac6ec48201b6258aed5a`  
		Last Modified: Thu, 02 Mar 2017 03:42:44 GMT  
		Size: 23.9 MB (23931335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f92c6879bc72d3da73bb131a1f3de1ab0920f08842958c6d9ad4c771297d9b0`  
		Last Modified: Thu, 02 Mar 2017 03:42:34 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:8445d8d0d5a6b7e56fcf28f1aead728cc46fa2824d065a1c51ede97e7c2c87ef
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75471037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe21168d8790fd07c8710cc4ad454188297c65f11e98c3ed5708424f2740ac62`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:41 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 28 Feb 2017 22:54:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:52 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:53 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:53 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d65c25ede4a9126f6c2c7d8d20ba219feb1c378bbcb80e4c0166bc69f1fe28`  
		Last Modified: Thu, 02 Mar 2017 03:43:33 GMT  
		Size: 24.1 MB (24105922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a664a5b89892e6f57e554bee79ac32957f05123b97afbc523a6d4c74bfd66eef`  
		Last Modified: Thu, 02 Mar 2017 03:43:26 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:8445d8d0d5a6b7e56fcf28f1aead728cc46fa2824d065a1c51ede97e7c2c87ef
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75471037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe21168d8790fd07c8710cc4ad454188297c65f11e98c3ed5708424f2740ac62`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:41 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 28 Feb 2017 22:54:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:52 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:53 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:53 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d65c25ede4a9126f6c2c7d8d20ba219feb1c378bbcb80e4c0166bc69f1fe28`  
		Last Modified: Thu, 02 Mar 2017 03:43:33 GMT  
		Size: 24.1 MB (24105922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a664a5b89892e6f57e554bee79ac32957f05123b97afbc523a6d4c74bfd66eef`  
		Last Modified: Thu, 02 Mar 2017 03:43:26 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:1236bef8a5d6f5b2f650ece29bbd30940dfd85623a8f6caf7c92e59c085cf9d8
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75964836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d291ae25b18a1bbfe6ada0e209e146579a4216ef826c5970952f14866a6331d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:54:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Tue, 28 Feb 2017 22:55:06 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:55:06 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:55:06 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:55:07 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:55:07 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef38b724486eff53e63031aa60e9c7de3e40af1a5175a0c46b3f804418062149`  
		Last Modified: Thu, 02 Mar 2017 03:44:18 GMT  
		Size: 24.6 MB (24599720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b731347fe2efc618e997a57dfde02187f389670774440b4d9976656f659d43d8`  
		Last Modified: Thu, 02 Mar 2017 03:44:12 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:78c4c361d2d6fcd86fe5b6683fb32aaef43f1ac6011f37a8b9b167d922ee8c8e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75981837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a81cdb853be1688596dd357feeb5f0886fd5bafd109d5763cc302404bcd51d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:53:59 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 28 Feb 2017 22:54:13 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:13 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:14 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:14 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:14 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f83c13d1714dc65a5ee23f1af073ed10489e4f16890372a81ade2f0f3711f5`  
		Last Modified: Thu, 02 Mar 2017 03:44:47 GMT  
		Size: 24.6 MB (24616722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df8b4770d621862fd58252312a6a360a229412ddaa5a515c6634fc36d541628`  
		Last Modified: Thu, 02 Mar 2017 03:44:40 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:78c4c361d2d6fcd86fe5b6683fb32aaef43f1ac6011f37a8b9b167d922ee8c8e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75981837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a81cdb853be1688596dd357feeb5f0886fd5bafd109d5763cc302404bcd51d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:53:59 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 28 Feb 2017 22:54:13 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:13 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:14 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:14 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:14 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f83c13d1714dc65a5ee23f1af073ed10489e4f16890372a81ade2f0f3711f5`  
		Last Modified: Thu, 02 Mar 2017 03:44:47 GMT  
		Size: 24.6 MB (24616722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df8b4770d621862fd58252312a6a360a229412ddaa5a515c6634fc36d541628`  
		Last Modified: Thu, 02 Mar 2017 03:44:40 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:78c4c361d2d6fcd86fe5b6683fb32aaef43f1ac6011f37a8b9b167d922ee8c8e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75981837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a81cdb853be1688596dd357feeb5f0886fd5bafd109d5763cc302404bcd51d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:53:59 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 28 Feb 2017 22:54:13 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:13 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:14 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:14 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:14 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f83c13d1714dc65a5ee23f1af073ed10489e4f16890372a81ade2f0f3711f5`  
		Last Modified: Thu, 02 Mar 2017 03:44:47 GMT  
		Size: 24.6 MB (24616722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df8b4770d621862fd58252312a6a360a229412ddaa5a515c6634fc36d541628`  
		Last Modified: Thu, 02 Mar 2017 03:44:40 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:78c4c361d2d6fcd86fe5b6683fb32aaef43f1ac6011f37a8b9b167d922ee8c8e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75981837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a81cdb853be1688596dd357feeb5f0886fd5bafd109d5763cc302404bcd51d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:53:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 28 Feb 2017 22:53:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 28 Feb 2017 22:53:59 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 28 Feb 2017 22:53:59 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 28 Feb 2017 22:54:13 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:54:13 GMT
VOLUME [/data]
# Tue, 28 Feb 2017 22:54:14 GMT
WORKDIR /data
# Tue, 28 Feb 2017 22:54:14 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 28 Feb 2017 22:54:14 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2ab5114b0201cf3227c209b5797cf16d050c67dd5e0bca9f50e184986b880d`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6296f9825a9567208b30001dcade16f4b1e1747d06cd97e1c81de1ab8151c416`  
		Last Modified: Thu, 02 Mar 2017 03:41:46 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f83c13d1714dc65a5ee23f1af073ed10489e4f16890372a81ade2f0f3711f5`  
		Last Modified: Thu, 02 Mar 2017 03:44:47 GMT  
		Size: 24.6 MB (24616722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df8b4770d621862fd58252312a6a360a229412ddaa5a515c6634fc36d541628`  
		Last Modified: Thu, 02 Mar 2017 03:44:40 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
