<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.0`](#rethinkdb20)
-	[`rethinkdb:2.0.4`](#rethinkdb204)
-	[`rethinkdb:2.1`](#rethinkdb21)
-	[`rethinkdb:2.1.6`](#rethinkdb216)
-	[`rethinkdb:2.2`](#rethinkdb22)
-	[`rethinkdb:2.2.6`](#rethinkdb226)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.4`](#rethinkdb234)
-	[`rethinkdb:2.3.5`](#rethinkdb235)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:e752a5624ab4c0724d1c2c5201e09c8d88de290bafd85f026ddb53cc21a31717
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77930709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be24926bde9a4d9d918df55ef943629a7753b4cf4665934a075af8e972e69ab9`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:53:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Jun 2017 05:53:17 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:53:18 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:53:19 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:53:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:53:20 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c608387ab3ea6962ca3a4c2ed00a1f32d514cec8db70400c49f36b6a04511`  
		Last Modified: Sat, 24 Jun 2017 21:50:15 GMT  
		Size: 25.3 MB (25314156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0168e87b556906acdc2fcce1e99074d734c1f69ae85978e37218aa53f49b00c9`  
		Last Modified: Sat, 24 Jun 2017 21:50:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:8ecd28461a0533f6cb36e9d61d5c3b926e4f86f8bc780411ec75c9b51200da33
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82841791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191463bce749525280a4203ed07cb928191583b35266c6b59c5261553b7ea197`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:50:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Fri, 23 Jun 2017 05:50:19 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:50:20 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:50:21 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:50:22 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:50:22 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90b85218f551482334bb97bbc409374927e47e52f8f3858afab425450b5b5b0`  
		Last Modified: Sat, 24 Jun 2017 21:46:27 GMT  
		Size: 30.2 MB (30225238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38941a07540d0792b4d1656a90f0999644b9efde6d75069353eef5ba7055394d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0.4`

```console
$ docker pull rethinkdb@sha256:8ecd28461a0533f6cb36e9d61d5c3b926e4f86f8bc780411ec75c9b51200da33
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82841791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191463bce749525280a4203ed07cb928191583b35266c6b59c5261553b7ea197`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:50:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Fri, 23 Jun 2017 05:50:19 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:50:20 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:50:21 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:50:22 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:50:22 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90b85218f551482334bb97bbc409374927e47e52f8f3858afab425450b5b5b0`  
		Last Modified: Sat, 24 Jun 2017 21:46:27 GMT  
		Size: 30.2 MB (30225238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38941a07540d0792b4d1656a90f0999644b9efde6d75069353eef5ba7055394d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:7933258c9b3afb1403a9bd449408584529849285ffa7caed310217399276a3de
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77239474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87d8b2545a6eb48b2e7b0aa709918ea9208bc6b38c344b254f600bf970f2115`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:50:47 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Fri, 23 Jun 2017 05:51:03 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:51:04 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:51:05 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:51:05 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:51:06 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e146cdc81baef9ede5522cad003afe05214b34cd9ad96e8866f5bab3acd60025`  
		Last Modified: Sat, 24 Jun 2017 21:47:32 GMT  
		Size: 24.6 MB (24622921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128df4f53f2c8d30f4a518341c1bfb517faa316e651db4dc39f352864157630a`  
		Last Modified: Sat, 24 Jun 2017 21:47:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:7933258c9b3afb1403a9bd449408584529849285ffa7caed310217399276a3de
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77239474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87d8b2545a6eb48b2e7b0aa709918ea9208bc6b38c344b254f600bf970f2115`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:50:47 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Fri, 23 Jun 2017 05:51:03 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:51:04 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:51:05 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:51:05 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:51:06 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e146cdc81baef9ede5522cad003afe05214b34cd9ad96e8866f5bab3acd60025`  
		Last Modified: Sat, 24 Jun 2017 21:47:32 GMT  
		Size: 24.6 MB (24622921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128df4f53f2c8d30f4a518341c1bfb517faa316e651db4dc39f352864157630a`  
		Last Modified: Sat, 24 Jun 2017 21:47:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:5691857514a92dd0c0a93069d9f25ef85c99fa4f237174c7bcb1fcbf8d1ba2d6
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77414431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6655285722fa25d442d0f2bff1faff04d8c35b2f04b132392fdf16269231636`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:51:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Fri, 23 Jun 2017 05:51:47 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:51:48 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:51:49 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:51:50 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:51:51 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dade20de2dd60aa508544d412a160284d795ce1b89c394628acef73b1b52575`  
		Last Modified: Sat, 24 Jun 2017 21:48:34 GMT  
		Size: 24.8 MB (24797878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1e58b2bff9f93384cd5736b2429a2affcc20a3328c26c368d7cc79bbc4e9b2`  
		Last Modified: Sat, 24 Jun 2017 21:48:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:5691857514a92dd0c0a93069d9f25ef85c99fa4f237174c7bcb1fcbf8d1ba2d6
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77414431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6655285722fa25d442d0f2bff1faff04d8c35b2f04b132392fdf16269231636`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:51:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Fri, 23 Jun 2017 05:51:47 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:51:48 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:51:49 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:51:50 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:51:51 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dade20de2dd60aa508544d412a160284d795ce1b89c394628acef73b1b52575`  
		Last Modified: Sat, 24 Jun 2017 21:48:34 GMT  
		Size: 24.8 MB (24797878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1e58b2bff9f93384cd5736b2429a2affcc20a3328c26c368d7cc79bbc4e9b2`  
		Last Modified: Sat, 24 Jun 2017 21:48:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:e752a5624ab4c0724d1c2c5201e09c8d88de290bafd85f026ddb53cc21a31717
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77930709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be24926bde9a4d9d918df55ef943629a7753b4cf4665934a075af8e972e69ab9`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:53:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Jun 2017 05:53:17 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:53:18 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:53:19 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:53:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:53:20 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c608387ab3ea6962ca3a4c2ed00a1f32d514cec8db70400c49f36b6a04511`  
		Last Modified: Sat, 24 Jun 2017 21:50:15 GMT  
		Size: 25.3 MB (25314156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0168e87b556906acdc2fcce1e99074d734c1f69ae85978e37218aa53f49b00c9`  
		Last Modified: Sat, 24 Jun 2017 21:50:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:af811ce161bdbed973a3fcb8e2e90d4610df25f9a3b84c05ecfce3d1f46f0a5d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77926427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e37b2998d518eb22d85559e2eaff63698d479ca9b89a680b070f421626f440f`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:52:16 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Fri, 23 Jun 2017 05:52:32 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:52:33 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:52:34 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:52:35 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:52:36 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aefe5bf044c95f2404acc537eb033775fda339ad0e51d00b470aac5d89861b`  
		Last Modified: Sat, 24 Jun 2017 21:49:38 GMT  
		Size: 25.3 MB (25309874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b9e377bfcb1e1e386f903a1f8292dd05fff7bacba980265297caf82ad1f595`  
		Last Modified: Sat, 24 Jun 2017 21:49:33 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:e752a5624ab4c0724d1c2c5201e09c8d88de290bafd85f026ddb53cc21a31717
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77930709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be24926bde9a4d9d918df55ef943629a7753b4cf4665934a075af8e972e69ab9`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:53:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Jun 2017 05:53:17 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:53:18 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:53:19 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:53:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:53:20 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c608387ab3ea6962ca3a4c2ed00a1f32d514cec8db70400c49f36b6a04511`  
		Last Modified: Sat, 24 Jun 2017 21:50:15 GMT  
		Size: 25.3 MB (25314156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0168e87b556906acdc2fcce1e99074d734c1f69ae85978e37218aa53f49b00c9`  
		Last Modified: Sat, 24 Jun 2017 21:50:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:e752a5624ab4c0724d1c2c5201e09c8d88de290bafd85f026ddb53cc21a31717
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77930709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be24926bde9a4d9d918df55ef943629a7753b4cf4665934a075af8e972e69ab9`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 05:49:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Jun 2017 05:49:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Jun 2017 05:50:00 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Jun 2017 05:53:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Jun 2017 05:53:17 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 05:53:18 GMT
VOLUME [/data]
# Fri, 23 Jun 2017 05:53:19 GMT
WORKDIR /data
# Fri, 23 Jun 2017 05:53:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Jun 2017 05:53:20 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cff7bd7d5fcbb41f1b8348839b59169161ec9efb781c4d9ce521887cb76e82`  
		Last Modified: Sat, 24 Jun 2017 21:46:21 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f87e28358def80334e227d2ef8c64442c3532b453b3391f3b718d4dba9c9d`  
		Last Modified: Sat, 24 Jun 2017 21:46:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c608387ab3ea6962ca3a4c2ed00a1f32d514cec8db70400c49f36b6a04511`  
		Last Modified: Sat, 24 Jun 2017 21:50:15 GMT  
		Size: 25.3 MB (25314156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0168e87b556906acdc2fcce1e99074d734c1f69ae85978e37218aa53f49b00c9`  
		Last Modified: Sat, 24 Jun 2017 21:50:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
