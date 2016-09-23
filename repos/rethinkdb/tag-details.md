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
$ docker pull rethinkdb@sha256:c2c9610322641b07a4c83d46ea723494c38c211807cd15abaa80f7f887b507a6
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80652629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba44b004fbb593dddd854081cf543ec93f127feb5f60899389be07e40fac7c24`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:09:42 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Fri, 23 Sep 2016 23:09:59 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:09:59 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:09:59 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:10:00 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:10:00 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420243719c798b5ddfdba0476514793a46a43f6247201d341135a103a62aee7`  
		Last Modified: Fri, 23 Sep 2016 23:10:18 GMT  
		Size: 29.3 MB (29296524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa19de781b990ff0f6962a5f38ab031d17ababd832a4ba5ce5349d32f9579e0`  
		Last Modified: Fri, 23 Sep 2016 23:10:08 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:c2c9610322641b07a4c83d46ea723494c38c211807cd15abaa80f7f887b507a6
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80652629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba44b004fbb593dddd854081cf543ec93f127feb5f60899389be07e40fac7c24`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:09:42 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Fri, 23 Sep 2016 23:09:59 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:09:59 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:09:59 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:10:00 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:10:00 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420243719c798b5ddfdba0476514793a46a43f6247201d341135a103a62aee7`  
		Last Modified: Fri, 23 Sep 2016 23:10:18 GMT  
		Size: 29.3 MB (29296524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa19de781b990ff0f6962a5f38ab031d17ababd832a4ba5ce5349d32f9579e0`  
		Last Modified: Fri, 23 Sep 2016 23:10:08 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:e1605cfc5e4d785e77493b45f915af12041ff68d4f50c30dc43d82ae21c945ac
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75274108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ac1c071e7d788cbab9dd04a3b2a42b853db13f903be3f392658faf850a5aed`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:10:35 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Fri, 23 Sep 2016 23:10:51 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:10:51 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:10:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:10:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:10:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c928202d094919f74b83a9d1ecc519eb7bcd41a2ab9cd91b59199b34942d4b`  
		Last Modified: Fri, 23 Sep 2016 23:11:07 GMT  
		Size: 23.9 MB (23918003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70215101522642bda3320f6d0a6eb14db9853452aee17a2c89c3d87bad59f9b6`  
		Last Modified: Fri, 23 Sep 2016 23:11:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:e1605cfc5e4d785e77493b45f915af12041ff68d4f50c30dc43d82ae21c945ac
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75274108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ac1c071e7d788cbab9dd04a3b2a42b853db13f903be3f392658faf850a5aed`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:10:35 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Fri, 23 Sep 2016 23:10:51 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:10:51 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:10:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:10:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:10:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c928202d094919f74b83a9d1ecc519eb7bcd41a2ab9cd91b59199b34942d4b`  
		Last Modified: Fri, 23 Sep 2016 23:11:07 GMT  
		Size: 23.9 MB (23918003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70215101522642bda3320f6d0a6eb14db9853452aee17a2c89c3d87bad59f9b6`  
		Last Modified: Fri, 23 Sep 2016 23:11:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:ef6d295cef3e051f973334d9268c486e31d96a3cb459fdf8ca4e2ed113f9a8a8
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75455849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd2c327bc87e3bb9ab069ec513cd44b2883e3c106d594bae16e4aec91195cf7`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:11:24 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Fri, 23 Sep 2016 23:11:40 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:11:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:11:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:11:41 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:11:42 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99461ee55151ac2a110303f846d360078e3c53ca15a54f1a4513b38c698e05d`  
		Last Modified: Fri, 23 Sep 2016 23:11:58 GMT  
		Size: 24.1 MB (24099746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d46d4164fd39a4e93ff69e7234752877bd44fb3122347e24827b1c7773f4e71`  
		Last Modified: Fri, 23 Sep 2016 23:11:50 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:ef6d295cef3e051f973334d9268c486e31d96a3cb459fdf8ca4e2ed113f9a8a8
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75455849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd2c327bc87e3bb9ab069ec513cd44b2883e3c106d594bae16e4aec91195cf7`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:11:24 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Fri, 23 Sep 2016 23:11:40 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:11:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:11:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:11:41 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:11:42 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99461ee55151ac2a110303f846d360078e3c53ca15a54f1a4513b38c698e05d`  
		Last Modified: Fri, 23 Sep 2016 23:11:58 GMT  
		Size: 24.1 MB (24099746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d46d4164fd39a4e93ff69e7234752877bd44fb3122347e24827b1c7773f4e71`  
		Last Modified: Fri, 23 Sep 2016 23:11:50 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:a9bd1cee556902fa92d4c174dbfc8438687bb38336d22d01ab2f86826871b6ca
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75955300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2275a08a417b06eb462beeb35f205b037ce293cf58920b78d26b6a039d7c364b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:12:14 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Fri, 23 Sep 2016 23:12:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:12:29 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:12:29 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:12:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:12:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c10ff48cdb9a508f12a2f0840fbff1eff1ef9a306ba4d0f7c2b177c01fa48c`  
		Last Modified: Fri, 23 Sep 2016 23:12:49 GMT  
		Size: 24.6 MB (24599199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e396096858de6494b856a7e74994dd799c9125e2530888000c3821146f40de`  
		Last Modified: Fri, 23 Sep 2016 23:12:42 GMT  
		Size: 88.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:d258f29351a75ee4efaeadd173e3da78cf6644df6b18debe1543543dcc6f5e20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75959405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10cc6435528da5d3018dd5dd65768fb01b5be930e53e225cd39ed126b00f3bc`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:08:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Sep 2016 23:08:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:50 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:08:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00908b07826c2438120027a90571cfd1d270532ef76bb9db3bc54d660169b021`  
		Last Modified: Fri, 23 Sep 2016 23:09:08 GMT  
		Size: 24.6 MB (24603300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc9444c2b4fbb300e3df206dd38e8d76adaa1a12d1b48d962f320c64b3754e`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:d258f29351a75ee4efaeadd173e3da78cf6644df6b18debe1543543dcc6f5e20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75959405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10cc6435528da5d3018dd5dd65768fb01b5be930e53e225cd39ed126b00f3bc`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:08:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Sep 2016 23:08:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:50 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:08:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00908b07826c2438120027a90571cfd1d270532ef76bb9db3bc54d660169b021`  
		Last Modified: Fri, 23 Sep 2016 23:09:08 GMT  
		Size: 24.6 MB (24603300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc9444c2b4fbb300e3df206dd38e8d76adaa1a12d1b48d962f320c64b3754e`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:d258f29351a75ee4efaeadd173e3da78cf6644df6b18debe1543543dcc6f5e20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75959405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10cc6435528da5d3018dd5dd65768fb01b5be930e53e225cd39ed126b00f3bc`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:08:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Sep 2016 23:08:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:50 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:08:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00908b07826c2438120027a90571cfd1d270532ef76bb9db3bc54d660169b021`  
		Last Modified: Fri, 23 Sep 2016 23:09:08 GMT  
		Size: 24.6 MB (24603300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc9444c2b4fbb300e3df206dd38e8d76adaa1a12d1b48d962f320c64b3754e`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:d258f29351a75ee4efaeadd173e3da78cf6644df6b18debe1543543dcc6f5e20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75959405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10cc6435528da5d3018dd5dd65768fb01b5be930e53e225cd39ed126b00f3bc`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:08:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 23 Sep 2016 23:08:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Fri, 23 Sep 2016 23:08:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 23 Sep 2016 23:08:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Fri, 23 Sep 2016 23:08:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:08:50 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:08:51 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:08:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 23 Sep 2016 23:08:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3833f76d45bacfc30dc4871a87a41f6a45f472828eeaca54c01e15260cdbb4b5`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10178b7f19dbaeafc069e27b46ea91773ce62f620136e20de34ad948a0595ee2`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00908b07826c2438120027a90571cfd1d270532ef76bb9db3bc54d660169b021`  
		Last Modified: Fri, 23 Sep 2016 23:09:08 GMT  
		Size: 24.6 MB (24603300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc9444c2b4fbb300e3df206dd38e8d76adaa1a12d1b48d962f320c64b3754e`  
		Last Modified: Fri, 23 Sep 2016 23:09:00 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
