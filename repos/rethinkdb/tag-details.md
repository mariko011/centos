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
$ docker pull rethinkdb@sha256:6ec8a49636ad05ce4a4a8e07974b13d6110f0c7d13d83073ecbe04cf9770970e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80816980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b009977160c946c220c18fdb9541ccd9e80e65bcd02a66a28460191427b94d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:23:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 22 Mar 2017 15:24:10 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:24:10 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:24:11 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:24:12 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:24:12 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406fd3d4c0b3c68b8a112b4e186caa47a850921639e2d84ad00fef86cf54058d`  
		Last Modified: Fri, 24 Mar 2017 00:33:45 GMT  
		Size: 29.4 MB (29376762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e31f5367c16d38bee2cfdd9339848bf25f5ee5e453c23a1c4124cf263642cf5`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:6ec8a49636ad05ce4a4a8e07974b13d6110f0c7d13d83073ecbe04cf9770970e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80816980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b009977160c946c220c18fdb9541ccd9e80e65bcd02a66a28460191427b94d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:23:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 22 Mar 2017 15:24:10 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:24:10 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:24:11 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:24:12 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:24:12 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406fd3d4c0b3c68b8a112b4e186caa47a850921639e2d84ad00fef86cf54058d`  
		Last Modified: Fri, 24 Mar 2017 00:33:45 GMT  
		Size: 29.4 MB (29376762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e31f5367c16d38bee2cfdd9339848bf25f5ee5e453c23a1c4124cf263642cf5`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:baff5f4b523a27cf353df4a7336f42bbc733b33c4f3e6d65837d4b925847169f
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75442026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5560c5e9ec57858ec2e240566732c69dfd568d0bae6a1d02d55d98fd5d434b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:24:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 22 Mar 2017 15:24:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:24:29 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:24:30 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:24:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:24:31 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e572ebb83234bc0925f9cdd9cbdc0f59911a54edab9060da69efc15b376d748`  
		Last Modified: Fri, 24 Mar 2017 00:34:36 GMT  
		Size: 24.0 MB (24001810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108098615ea704d0b3eac9f5507a5cf768cf3f59505cd2dd0465d9bf3e8ff2ff`  
		Last Modified: Fri, 24 Mar 2017 00:34:28 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:baff5f4b523a27cf353df4a7336f42bbc733b33c4f3e6d65837d4b925847169f
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75442026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5560c5e9ec57858ec2e240566732c69dfd568d0bae6a1d02d55d98fd5d434b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:24:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 22 Mar 2017 15:24:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:24:29 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:24:30 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:24:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:24:31 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e572ebb83234bc0925f9cdd9cbdc0f59911a54edab9060da69efc15b376d748`  
		Last Modified: Fri, 24 Mar 2017 00:34:36 GMT  
		Size: 24.0 MB (24001810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108098615ea704d0b3eac9f5507a5cf768cf3f59505cd2dd0465d9bf3e8ff2ff`  
		Last Modified: Fri, 24 Mar 2017 00:34:28 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:69b4de11608d043a1c8fbf8690d40a11bc38f79837eda8e98d0caef25d5909ba
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75616651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aae5b2879c41cf3e41fda39cc8cfc88aa74284ec59ef46ad8701b76efad5356`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:24:32 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 22 Mar 2017 15:24:47 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:24:48 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:24:48 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:24:49 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:24:49 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5accaff77c23d56334b76da676f95c6347879add3db1f54efd51399a0f56c1`  
		Last Modified: Fri, 24 Mar 2017 00:35:27 GMT  
		Size: 24.2 MB (24176435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dca29848ba9e35f40e1c335bba39652a0d9af2cab117e3b8b0ebae22fc4b5d`  
		Last Modified: Fri, 24 Mar 2017 00:35:19 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:69b4de11608d043a1c8fbf8690d40a11bc38f79837eda8e98d0caef25d5909ba
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75616651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aae5b2879c41cf3e41fda39cc8cfc88aa74284ec59ef46ad8701b76efad5356`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:24:32 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 22 Mar 2017 15:24:47 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:24:48 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:24:48 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:24:49 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:24:49 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5accaff77c23d56334b76da676f95c6347879add3db1f54efd51399a0f56c1`  
		Last Modified: Fri, 24 Mar 2017 00:35:27 GMT  
		Size: 24.2 MB (24176435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dca29848ba9e35f40e1c335bba39652a0d9af2cab117e3b8b0ebae22fc4b5d`  
		Last Modified: Fri, 24 Mar 2017 00:35:19 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:bde48d2e5a812177d8702c42d5ed2bdd09a3b7e4ff2a8b957406dc4687194522
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76112373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c49e2e34869dbebb17d7033fbce84a28bb7f757aa3ff6cc2455ce08db75904`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:24:50 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Wed, 22 Mar 2017 15:25:06 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:25:07 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:25:07 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:25:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:25:09 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fec5ecec20afa14d999e219664f9d343b9d1304da8fae8a00473050a336ae5c`  
		Last Modified: Fri, 24 Mar 2017 00:36:16 GMT  
		Size: 24.7 MB (24672155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa99d0960e04cf972568b23d31dcbbcf5aa4975b106cc3cade67be0d97f555c`  
		Last Modified: Fri, 24 Mar 2017 00:36:09 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:fcd81c133975b5cfcc8d8756ec3558bb79d3e496f1b35df2608db4efd243adf2
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ecfb08823bc5483c6a955b077a9bc82899a0df2f33899b64992345256f22dd`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:23:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 22 Mar 2017 15:23:48 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:23:51 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:23:52 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:23:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:23:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8635878876f7b295d374ee779b8169e143d086b8a5128024a46b967cb3ee`  
		Last Modified: Fri, 24 Mar 2017 00:36:48 GMT  
		Size: 24.7 MB (24687739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390795d7de7bd3a072add80300340df1eae8bac38ba11525322f4a92b9aa490b`  
		Last Modified: Fri, 24 Mar 2017 00:36:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:fcd81c133975b5cfcc8d8756ec3558bb79d3e496f1b35df2608db4efd243adf2
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ecfb08823bc5483c6a955b077a9bc82899a0df2f33899b64992345256f22dd`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:23:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 22 Mar 2017 15:23:48 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:23:51 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:23:52 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:23:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:23:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8635878876f7b295d374ee779b8169e143d086b8a5128024a46b967cb3ee`  
		Last Modified: Fri, 24 Mar 2017 00:36:48 GMT  
		Size: 24.7 MB (24687739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390795d7de7bd3a072add80300340df1eae8bac38ba11525322f4a92b9aa490b`  
		Last Modified: Fri, 24 Mar 2017 00:36:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:fcd81c133975b5cfcc8d8756ec3558bb79d3e496f1b35df2608db4efd243adf2
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ecfb08823bc5483c6a955b077a9bc82899a0df2f33899b64992345256f22dd`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:23:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 22 Mar 2017 15:23:48 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:23:51 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:23:52 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:23:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:23:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8635878876f7b295d374ee779b8169e143d086b8a5128024a46b967cb3ee`  
		Last Modified: Fri, 24 Mar 2017 00:36:48 GMT  
		Size: 24.7 MB (24687739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390795d7de7bd3a072add80300340df1eae8bac38ba11525322f4a92b9aa490b`  
		Last Modified: Fri, 24 Mar 2017 00:36:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:fcd81c133975b5cfcc8d8756ec3558bb79d3e496f1b35df2608db4efd243adf2
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ecfb08823bc5483c6a955b077a9bc82899a0df2f33899b64992345256f22dd`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 15:10:30 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 22 Mar 2017 15:23:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 22 Mar 2017 15:23:31 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 22 Mar 2017 15:23:31 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 22 Mar 2017 15:23:48 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:23:51 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:23:52 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:23:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 22 Mar 2017 15:23:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bf790001863c07015b34e931fbda4e0dbab0b4c18f0f6c51bc5b8bf8251513`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1369da1a1d16d0bee337aa9241d8c4256ed478c4e6a86dece8914753177d46`  
		Last Modified: Fri, 24 Mar 2017 00:33:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8635878876f7b295d374ee779b8169e143d086b8a5128024a46b967cb3ee`  
		Last Modified: Fri, 24 Mar 2017 00:36:48 GMT  
		Size: 24.7 MB (24687739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390795d7de7bd3a072add80300340df1eae8bac38ba11525322f4a92b9aa490b`  
		Last Modified: Fri, 24 Mar 2017 00:36:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
