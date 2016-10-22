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
$ docker pull rethinkdb@sha256:1280b1643c5601fd34ab4c2721f0db63b1603c3b4b3636bf5423395a96d7a95e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80651327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0700e4f7759419db7c47a2fbec48913514e3a95b39c2b107371c66af7048d4e`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:09:10 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Sat, 22 Oct 2016 01:09:25 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:09:25 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:09:26 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:09:26 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:09:26 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e229a6b19cc8a7af33de62a3ccb4dab3b60de851ffbfa100a1e0ecd9e41a85c`  
		Last Modified: Sat, 22 Oct 2016 01:09:44 GMT  
		Size: 29.3 MB (29296455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bffe2db0d3455c07601f55b4aa61fef823555bcba1996e8a907634de3df28a6`  
		Last Modified: Sat, 22 Oct 2016 01:09:36 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:1280b1643c5601fd34ab4c2721f0db63b1603c3b4b3636bf5423395a96d7a95e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80651327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0700e4f7759419db7c47a2fbec48913514e3a95b39c2b107371c66af7048d4e`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:09:10 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Sat, 22 Oct 2016 01:09:25 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:09:25 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:09:26 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:09:26 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:09:26 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e229a6b19cc8a7af33de62a3ccb4dab3b60de851ffbfa100a1e0ecd9e41a85c`  
		Last Modified: Sat, 22 Oct 2016 01:09:44 GMT  
		Size: 29.3 MB (29296455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bffe2db0d3455c07601f55b4aa61fef823555bcba1996e8a907634de3df28a6`  
		Last Modified: Sat, 22 Oct 2016 01:09:36 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:1ef4a19a141be13e0a0272febf13e997febe1f6fb5837caa521429b498d2ea85
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75273233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19485b7dcf3fd0fcee75509f5ba04eecb2f8d9bec8326fa6dcf4f7cce0000a3`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:10:02 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Sat, 22 Oct 2016 01:10:18 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:10:18 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:10:19 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:10:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:10:20 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b833202f0e8edd9f7413e9a5877524dea7e963a87752b2cf82da7a044618775f`  
		Last Modified: Sat, 22 Oct 2016 01:10:35 GMT  
		Size: 23.9 MB (23918360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509ea4f13ce95f41abf795be5b0bfc3bf3662028d1d5e01431328a1caa0a7e95`  
		Last Modified: Sat, 22 Oct 2016 01:10:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:1ef4a19a141be13e0a0272febf13e997febe1f6fb5837caa521429b498d2ea85
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75273233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19485b7dcf3fd0fcee75509f5ba04eecb2f8d9bec8326fa6dcf4f7cce0000a3`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:10:02 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Sat, 22 Oct 2016 01:10:18 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:10:18 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:10:19 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:10:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:10:20 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b833202f0e8edd9f7413e9a5877524dea7e963a87752b2cf82da7a044618775f`  
		Last Modified: Sat, 22 Oct 2016 01:10:35 GMT  
		Size: 23.9 MB (23918360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509ea4f13ce95f41abf795be5b0bfc3bf3662028d1d5e01431328a1caa0a7e95`  
		Last Modified: Sat, 22 Oct 2016 01:10:30 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:dc37f61fc0455687d6562b15dfb6ce12de43ef058a3b1a5593328a8e360a860f
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75454813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6160f569a28d35b2dbb95ae72eedc89f4882e3b586cbe998663aa2fef110b239`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:10:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Sat, 22 Oct 2016 01:11:07 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:11:07 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:11:08 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:11:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:11:09 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0a27f132ed50a9df80df7fe90c8ae514c47fd099ff7a9a4dcbf1d377d01b37`  
		Last Modified: Sat, 22 Oct 2016 01:11:26 GMT  
		Size: 24.1 MB (24099940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa53e2bbe86e22feaa94a043c83c0beb4d84593515fc43c70ead81d0d9300d13`  
		Last Modified: Sat, 22 Oct 2016 01:11:18 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:dc37f61fc0455687d6562b15dfb6ce12de43ef058a3b1a5593328a8e360a860f
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75454813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6160f569a28d35b2dbb95ae72eedc89f4882e3b586cbe998663aa2fef110b239`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:10:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Sat, 22 Oct 2016 01:11:07 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:11:07 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:11:08 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:11:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:11:09 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0a27f132ed50a9df80df7fe90c8ae514c47fd099ff7a9a4dcbf1d377d01b37`  
		Last Modified: Sat, 22 Oct 2016 01:11:26 GMT  
		Size: 24.1 MB (24099940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa53e2bbe86e22feaa94a043c83c0beb4d84593515fc43c70ead81d0d9300d13`  
		Last Modified: Sat, 22 Oct 2016 01:11:18 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:69595ae654105bb74470301816c7d80f03bda58e2a99ff392a9e60cd23d7b753
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75954131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f13ff77a0cb25b8043a6356517dfa0b5f38c0c95f65a57252605918f6193c09`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:11:43 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Sat, 22 Oct 2016 01:11:56 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:11:56 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:11:56 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:11:57 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:11:57 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8b04e6dbd2d8ced49f9e7553b45b4efdf6ee62df3b68de751d7aeba3cecdff`  
		Last Modified: Sat, 22 Oct 2016 01:12:13 GMT  
		Size: 24.6 MB (24599258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec378971c6406b940de2295338ddc63e27a289561296f3ef950c1ff0d2683c2c`  
		Last Modified: Sat, 22 Oct 2016 01:12:07 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:0340626552c50d0852e9a31901d984c390f2a9704fbbc8ad53ebca66c261422d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75958211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98772db29d5646f0a61c7f2b5c7ff69868531ff03ec44913a456d4d9fb756f39`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:08:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Sat, 22 Oct 2016 01:08:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:08:14 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:08:15 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:08:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:08:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166c9b6f44287dbbbd746695c20877d5e8fcaba64d63006fe4f698053d5affa7`  
		Last Modified: Sat, 22 Oct 2016 01:08:32 GMT  
		Size: 24.6 MB (24603338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b021ff45110d1ef89e27a01a2f60f2dec0358814a785ab498d49408980b289a`  
		Last Modified: Sat, 22 Oct 2016 01:08:27 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:0340626552c50d0852e9a31901d984c390f2a9704fbbc8ad53ebca66c261422d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75958211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98772db29d5646f0a61c7f2b5c7ff69868531ff03ec44913a456d4d9fb756f39`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:08:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Sat, 22 Oct 2016 01:08:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:08:14 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:08:15 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:08:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:08:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166c9b6f44287dbbbd746695c20877d5e8fcaba64d63006fe4f698053d5affa7`  
		Last Modified: Sat, 22 Oct 2016 01:08:32 GMT  
		Size: 24.6 MB (24603338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b021ff45110d1ef89e27a01a2f60f2dec0358814a785ab498d49408980b289a`  
		Last Modified: Sat, 22 Oct 2016 01:08:27 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:0340626552c50d0852e9a31901d984c390f2a9704fbbc8ad53ebca66c261422d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75958211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98772db29d5646f0a61c7f2b5c7ff69868531ff03ec44913a456d4d9fb756f39`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:08:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Sat, 22 Oct 2016 01:08:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:08:14 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:08:15 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:08:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:08:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166c9b6f44287dbbbd746695c20877d5e8fcaba64d63006fe4f698053d5affa7`  
		Last Modified: Sat, 22 Oct 2016 01:08:32 GMT  
		Size: 24.6 MB (24603338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b021ff45110d1ef89e27a01a2f60f2dec0358814a785ab498d49408980b289a`  
		Last Modified: Sat, 22 Oct 2016 01:08:27 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:0340626552c50d0852e9a31901d984c390f2a9704fbbc8ad53ebca66c261422d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75958211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98772db29d5646f0a61c7f2b5c7ff69868531ff03ec44913a456d4d9fb756f39`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:07:59 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 22 Oct 2016 01:08:00 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Sat, 22 Oct 2016 01:08:01 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 22 Oct 2016 01:08:01 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Sat, 22 Oct 2016 01:08:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:08:14 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:08:15 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:08:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 22 Oct 2016 01:08:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92968af165ab71a60d456ebb40c124659156768bf4f85cd394e50c07cb56c09`  
		Last Modified: Sat, 22 Oct 2016 01:08:25 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009d33162daab21f5a035889a0fbba135682116f4dcb98bf786a88d134f3e476`  
		Last Modified: Sat, 22 Oct 2016 01:08:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166c9b6f44287dbbbd746695c20877d5e8fcaba64d63006fe4f698053d5affa7`  
		Last Modified: Sat, 22 Oct 2016 01:08:32 GMT  
		Size: 24.6 MB (24603338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b021ff45110d1ef89e27a01a2f60f2dec0358814a785ab498d49408980b289a`  
		Last Modified: Sat, 22 Oct 2016 01:08:27 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
