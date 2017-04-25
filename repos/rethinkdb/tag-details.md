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
$ docker pull rethinkdb@sha256:934b8ce4860263e2921a02bf07a836c6cb84b888aea49f0a58f9021a30393bd4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82779772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f627cdab3e873ca2be4081299306bf4416a0706a53b04558f4791f45e4911a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:58:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 25 Apr 2017 04:58:20 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:58:21 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:58:22 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:58:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:58:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d6982d807ceeb1e950f70eb13dbac24bd80e117e28fa492b57a2c15f8a8861`  
		Last Modified: Tue, 25 Apr 2017 21:21:59 GMT  
		Size: 30.2 MB (30227755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da1de919f8a91d424c98adaec38912fe047082ebce58fbb71b5e09ed251dded`  
		Last Modified: Tue, 25 Apr 2017 21:21:54 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:934b8ce4860263e2921a02bf07a836c6cb84b888aea49f0a58f9021a30393bd4
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82779772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f627cdab3e873ca2be4081299306bf4416a0706a53b04558f4791f45e4911a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:58:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 25 Apr 2017 04:58:20 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:58:21 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:58:22 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:58:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:58:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d6982d807ceeb1e950f70eb13dbac24bd80e117e28fa492b57a2c15f8a8861`  
		Last Modified: Tue, 25 Apr 2017 21:21:59 GMT  
		Size: 30.2 MB (30227755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da1de919f8a91d424c98adaec38912fe047082ebce58fbb71b5e09ed251dded`  
		Last Modified: Tue, 25 Apr 2017 21:21:54 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:d7a68096ca5debd182d360f0bc494c4c7285096c4cd9a558ebfcba0dd2fe6000
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77176099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd0a086a13d87c0a027c345f00e8c4a6ae6c7e3298b7619a70a9effbfa118e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:58:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 25 Apr 2017 04:59:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:59:14 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:59:15 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:59:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:59:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456b631ec5b8ed3894543d79853e8b4530a0aef89a406c6467ff4d724312465e`  
		Last Modified: Tue, 25 Apr 2017 21:22:47 GMT  
		Size: 24.6 MB (24624080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20698a31fd476e892e3c4d4734632d44879e81efee13d7a493f622b6f0d13d6`  
		Last Modified: Tue, 25 Apr 2017 21:22:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:d7a68096ca5debd182d360f0bc494c4c7285096c4cd9a558ebfcba0dd2fe6000
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77176099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd0a086a13d87c0a027c345f00e8c4a6ae6c7e3298b7619a70a9effbfa118e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:58:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 25 Apr 2017 04:59:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:59:14 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:59:15 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:59:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:59:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456b631ec5b8ed3894543d79853e8b4530a0aef89a406c6467ff4d724312465e`  
		Last Modified: Tue, 25 Apr 2017 21:22:47 GMT  
		Size: 24.6 MB (24624080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20698a31fd476e892e3c4d4734632d44879e81efee13d7a493f622b6f0d13d6`  
		Last Modified: Tue, 25 Apr 2017 21:22:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:33c6b7a4e85187c527206e73c0b9c5e745f9c77db0618f04967c63e956a2d434
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77353143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2041dd8ad272ff8c3a7e435aa2a6b0170d9756513eaa310240c3527043d857e1`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:59:38 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 25 Apr 2017 04:59:56 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:59:57 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:59:58 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:59:59 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:59:59 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995eba1f79c4deb90d26e23a54e372f323cc16250347b800fa4fd4589a6b5764`  
		Last Modified: Tue, 25 Apr 2017 21:23:34 GMT  
		Size: 24.8 MB (24801124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9309963e38202345722443564fc847f0283cd99fc87c1ff865f78cde31697dc`  
		Last Modified: Tue, 25 Apr 2017 21:23:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:33c6b7a4e85187c527206e73c0b9c5e745f9c77db0618f04967c63e956a2d434
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77353143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2041dd8ad272ff8c3a7e435aa2a6b0170d9756513eaa310240c3527043d857e1`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:59:38 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 25 Apr 2017 04:59:56 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:59:57 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:59:58 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:59:59 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:59:59 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995eba1f79c4deb90d26e23a54e372f323cc16250347b800fa4fd4589a6b5764`  
		Last Modified: Tue, 25 Apr 2017 21:23:34 GMT  
		Size: 24.8 MB (24801124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9309963e38202345722443564fc847f0283cd99fc87c1ff865f78cde31697dc`  
		Last Modified: Tue, 25 Apr 2017 21:23:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:21d9a43da3595df329404b39299c672dba59b051956cfe27b3650acd148bf589
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77863505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed608ddb703702bfd39c3211222c45afbebe2fc9d21db81c7adfd922d9b7f081`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 05:00:17 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Tue, 25 Apr 2017 05:00:36 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:00:36 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 05:00:37 GMT
WORKDIR /data
# Tue, 25 Apr 2017 05:00:38 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 05:00:38 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b33a1060082a76b0c9daee2ed55793ee22d9262d045b19ab8d87977e35fb43`  
		Last Modified: Tue, 25 Apr 2017 21:24:22 GMT  
		Size: 25.3 MB (25311486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf69fc6d9fb75a37e5455feae9e652169d2c957d01201ab10f173ae028471de`  
		Last Modified: Tue, 25 Apr 2017 21:24:17 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:37bdff38d86611a9cb34e89d70b18618316d17c3c3fa867be316c6ea99e31496
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77867101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ed876750b40cde4725ea9eb9d8503f4d1419a2f23ac2ef8e4cc1d535e2c3a2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:57:21 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 25 Apr 2017 04:57:40 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:57:41 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:57:42 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:57:42 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:57:43 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e93e40ea6c05844fb9641294c3172398659ff18202112655193a40521e3d182`  
		Last Modified: Tue, 25 Apr 2017 21:24:49 GMT  
		Size: 25.3 MB (25315082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e232f10849da118fc5b7db5ebead4ff7b6c23e9f874e17f56fdca5aaac6578`  
		Last Modified: Tue, 25 Apr 2017 21:24:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:37bdff38d86611a9cb34e89d70b18618316d17c3c3fa867be316c6ea99e31496
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77867101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ed876750b40cde4725ea9eb9d8503f4d1419a2f23ac2ef8e4cc1d535e2c3a2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:57:21 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 25 Apr 2017 04:57:40 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:57:41 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:57:42 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:57:42 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:57:43 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e93e40ea6c05844fb9641294c3172398659ff18202112655193a40521e3d182`  
		Last Modified: Tue, 25 Apr 2017 21:24:49 GMT  
		Size: 25.3 MB (25315082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e232f10849da118fc5b7db5ebead4ff7b6c23e9f874e17f56fdca5aaac6578`  
		Last Modified: Tue, 25 Apr 2017 21:24:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:37bdff38d86611a9cb34e89d70b18618316d17c3c3fa867be316c6ea99e31496
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77867101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ed876750b40cde4725ea9eb9d8503f4d1419a2f23ac2ef8e4cc1d535e2c3a2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:57:21 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 25 Apr 2017 04:57:40 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:57:41 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:57:42 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:57:42 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:57:43 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e93e40ea6c05844fb9641294c3172398659ff18202112655193a40521e3d182`  
		Last Modified: Tue, 25 Apr 2017 21:24:49 GMT  
		Size: 25.3 MB (25315082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e232f10849da118fc5b7db5ebead4ff7b6c23e9f874e17f56fdca5aaac6578`  
		Last Modified: Tue, 25 Apr 2017 21:24:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:37bdff38d86611a9cb34e89d70b18618316d17c3c3fa867be316c6ea99e31496
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77867101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ed876750b40cde4725ea9eb9d8503f4d1419a2f23ac2ef8e4cc1d535e2c3a2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:57:16 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 25 Apr 2017 04:57:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 25 Apr 2017 04:57:20 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 25 Apr 2017 04:57:21 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 25 Apr 2017 04:57:40 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:57:41 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:57:42 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:57:42 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 25 Apr 2017 04:57:43 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f7b9a55bc5fb557f2553e994f4afc58cb505dcbbdd1fad7dd77e16ee5e2626`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b28f0b951e87815ac357dfe80ebe3d2a1d08010590ba4addef71730f970ef68`  
		Last Modified: Tue, 25 Apr 2017 21:21:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e93e40ea6c05844fb9641294c3172398659ff18202112655193a40521e3d182`  
		Last Modified: Tue, 25 Apr 2017 21:24:49 GMT  
		Size: 25.3 MB (25315082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e232f10849da118fc5b7db5ebead4ff7b6c23e9f874e17f56fdca5aaac6578`  
		Last Modified: Tue, 25 Apr 2017 21:24:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
