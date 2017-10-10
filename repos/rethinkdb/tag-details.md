<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:cfeb8c65065b7eb0d93e6ddfcee125616959d0c4ea685d3c0fc0b85cca9aa24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d73ea374d6e4b06350977e715ce324e7dd06c706cd3a994b977c939a3eada4d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f1970be21b3f0ecca23fa3a44bcfdfa7dbfc5767c0138ee371fcda97e2dfac`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:06:40 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 10 Oct 2017 03:06:45 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 10 Oct 2017 03:06:46 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 10 Oct 2017 03:06:46 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 10 Oct 2017 03:07:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:07:15 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 03:07:15 GMT
WORKDIR /data
# Tue, 10 Oct 2017 03:07:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 10 Oct 2017 03:07:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc05eccb0db9218096bdcb78c01eabcf1a4acfee351af72537c565d6ff2237a`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9225f95e703f15f81c7ddd7bb821679c91217f672501466692d24aa77c92929`  
		Last Modified: Tue, 10 Oct 2017 03:07:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c9a33752997ff4b74c328810a927a478b0d314d06ea46a1034f2f58c57ce1`  
		Last Modified: Tue, 10 Oct 2017 03:07:32 GMT  
		Size: 25.3 MB (25274033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3d47a45a0850849a925907d54b021df654bf9f69542e677162d60d661a9ace`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:cfeb8c65065b7eb0d93e6ddfcee125616959d0c4ea685d3c0fc0b85cca9aa24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d73ea374d6e4b06350977e715ce324e7dd06c706cd3a994b977c939a3eada4d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f1970be21b3f0ecca23fa3a44bcfdfa7dbfc5767c0138ee371fcda97e2dfac`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:06:40 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 10 Oct 2017 03:06:45 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 10 Oct 2017 03:06:46 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 10 Oct 2017 03:06:46 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 10 Oct 2017 03:07:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:07:15 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 03:07:15 GMT
WORKDIR /data
# Tue, 10 Oct 2017 03:07:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 10 Oct 2017 03:07:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc05eccb0db9218096bdcb78c01eabcf1a4acfee351af72537c565d6ff2237a`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9225f95e703f15f81c7ddd7bb821679c91217f672501466692d24aa77c92929`  
		Last Modified: Tue, 10 Oct 2017 03:07:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c9a33752997ff4b74c328810a927a478b0d314d06ea46a1034f2f58c57ce1`  
		Last Modified: Tue, 10 Oct 2017 03:07:32 GMT  
		Size: 25.3 MB (25274033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3d47a45a0850849a925907d54b021df654bf9f69542e677162d60d661a9ace`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:cfeb8c65065b7eb0d93e6ddfcee125616959d0c4ea685d3c0fc0b85cca9aa24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d73ea374d6e4b06350977e715ce324e7dd06c706cd3a994b977c939a3eada4d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f1970be21b3f0ecca23fa3a44bcfdfa7dbfc5767c0138ee371fcda97e2dfac`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:06:40 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 10 Oct 2017 03:06:45 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 10 Oct 2017 03:06:46 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 10 Oct 2017 03:06:46 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 10 Oct 2017 03:07:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:07:15 GMT
VOLUME [/data]
# Tue, 10 Oct 2017 03:07:15 GMT
WORKDIR /data
# Tue, 10 Oct 2017 03:07:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 10 Oct 2017 03:07:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc05eccb0db9218096bdcb78c01eabcf1a4acfee351af72537c565d6ff2237a`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9225f95e703f15f81c7ddd7bb821679c91217f672501466692d24aa77c92929`  
		Last Modified: Tue, 10 Oct 2017 03:07:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c9a33752997ff4b74c328810a927a478b0d314d06ea46a1034f2f58c57ce1`  
		Last Modified: Tue, 10 Oct 2017 03:07:32 GMT  
		Size: 25.3 MB (25274033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3d47a45a0850849a925907d54b021df654bf9f69542e677162d60d661a9ace`  
		Last Modified: Tue, 10 Oct 2017 03:07:28 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:68a025ae16ab062d6b25b2704359d227f63123a592f04883f7ec73da0b842675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7d4c107604445d650206bb2441155a53052bc7b2e8fc99d4f3b1226aa9079cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a2bb809ce9c394c1ceeb56859d6ba4d3829a1a9a04536596d67cae1f5763e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:23:44 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 04 Oct 2017 16:16:03 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 04 Oct 2017 16:16:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 04 Oct 2017 16:16:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 04 Oct 2017 16:16:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 16:16:29 GMT
VOLUME [/data]
# Wed, 04 Oct 2017 16:16:29 GMT
WORKDIR /data
# Wed, 04 Oct 2017 16:16:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 04 Oct 2017 16:16:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35437d1e465f7ab1f66dd2e4910f9af6e9b6c022af2d8f952946b0e086694e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:45 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861769af6987ff0f8aa75320b1f7a5346f3320c84abc071964b1c8776a7b5cc`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df324bde7866ffb5bb3f5a610fe9b61eae9078d69431df8c5414aad073f1e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:49 GMT  
		Size: 25.3 MB (25273764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d81702995ff1c77db9a8ee7ce83494326626128d440b655aea5a0d169f91ea`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
