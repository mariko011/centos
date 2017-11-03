<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:62102f827b3ce3ebfcbcc5e3a7fa9df5fe2da564937656f305fd112aca9b89bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d2746cb79472fc27edb441a3ce5adc2e2de47457ea00f676d6743040aa7a20b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d73a896844025d0f739cddf65bab1a5e15a5aef7f09215b536325f50864971`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:40:19 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 03 Nov 2017 22:40:23 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Fri, 03 Nov 2017 22:40:24 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 03 Nov 2017 22:40:25 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Fri, 03 Nov 2017 22:40:45 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:40:45 GMT
VOLUME [/data]
# Fri, 03 Nov 2017 22:40:45 GMT
WORKDIR /data
# Fri, 03 Nov 2017 22:40:45 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 03 Nov 2017 22:40:45 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebdc14f5587242a18c47bb040131529175486c2b79469a4cf2c947b939a3ab0`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0e913df13877d79e33bb6e67a1cac2ac7ae3524f2834f8eee59553308a1e48`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2d8a34d665862a7f14828aa9bc3b30f43adb343a997113fe0ec7ce06287f1c`  
		Last Modified: Fri, 03 Nov 2017 22:41:02 GMT  
		Size: 25.3 MB (25274075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95deb25404f4e91fbb97f754a28f72444b85c92bceb4dc46578d3e06148f04d`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:62102f827b3ce3ebfcbcc5e3a7fa9df5fe2da564937656f305fd112aca9b89bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d2746cb79472fc27edb441a3ce5adc2e2de47457ea00f676d6743040aa7a20b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d73a896844025d0f739cddf65bab1a5e15a5aef7f09215b536325f50864971`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:40:19 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 03 Nov 2017 22:40:23 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Fri, 03 Nov 2017 22:40:24 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 03 Nov 2017 22:40:25 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Fri, 03 Nov 2017 22:40:45 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:40:45 GMT
VOLUME [/data]
# Fri, 03 Nov 2017 22:40:45 GMT
WORKDIR /data
# Fri, 03 Nov 2017 22:40:45 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 03 Nov 2017 22:40:45 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebdc14f5587242a18c47bb040131529175486c2b79469a4cf2c947b939a3ab0`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0e913df13877d79e33bb6e67a1cac2ac7ae3524f2834f8eee59553308a1e48`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2d8a34d665862a7f14828aa9bc3b30f43adb343a997113fe0ec7ce06287f1c`  
		Last Modified: Fri, 03 Nov 2017 22:41:02 GMT  
		Size: 25.3 MB (25274075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95deb25404f4e91fbb97f754a28f72444b85c92bceb4dc46578d3e06148f04d`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:62102f827b3ce3ebfcbcc5e3a7fa9df5fe2da564937656f305fd112aca9b89bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d2746cb79472fc27edb441a3ce5adc2e2de47457ea00f676d6743040aa7a20b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d73a896844025d0f739cddf65bab1a5e15a5aef7f09215b536325f50864971`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:40:19 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 03 Nov 2017 22:40:23 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Fri, 03 Nov 2017 22:40:24 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 03 Nov 2017 22:40:25 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Fri, 03 Nov 2017 22:40:45 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:40:45 GMT
VOLUME [/data]
# Fri, 03 Nov 2017 22:40:45 GMT
WORKDIR /data
# Fri, 03 Nov 2017 22:40:45 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 03 Nov 2017 22:40:45 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebdc14f5587242a18c47bb040131529175486c2b79469a4cf2c947b939a3ab0`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0e913df13877d79e33bb6e67a1cac2ac7ae3524f2834f8eee59553308a1e48`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2d8a34d665862a7f14828aa9bc3b30f43adb343a997113fe0ec7ce06287f1c`  
		Last Modified: Fri, 03 Nov 2017 22:41:02 GMT  
		Size: 25.3 MB (25274075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95deb25404f4e91fbb97f754a28f72444b85c92bceb4dc46578d3e06148f04d`  
		Last Modified: Fri, 03 Nov 2017 22:40:56 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:cfeb8c65065b7eb0d93e6ddfcee125616959d0c4ea685d3c0fc0b85cca9aa24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

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
