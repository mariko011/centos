<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:707dd522be997f5a73f5e3f1a870010655c19ba0493902e06ee9e09e7f0f0bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7a49f92436332554b85ca50d1c5841c5db00bfdb327e23b454728ddc6805535a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e941cbe9918ba87eaaf7c4acd37ad01ea60f69b538c6e99a3fa60c33ee59864`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:42:36 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 04 Nov 2017 18:42:39 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 04 Nov 2017 18:42:39 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 04 Nov 2017 18:42:40 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 04 Nov 2017 18:43:01 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:43:01 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 18:43:01 GMT
WORKDIR /data
# Sat, 04 Nov 2017 18:43:01 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 04 Nov 2017 18:43:01 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b75d7eb89b1b70568ef43591e3646843b888fe35fac19ac82af36e1d7f8b4`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0924273b8b2d4a1c7786f178e39be9acd4792eb44c1d78e9b0a945cc4f05ec5`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a96398b6ae54d1a1703e160cc10ea3185b89d000ba0ee5379870b3bf458045a`  
		Last Modified: Sat, 04 Nov 2017 18:43:16 GMT  
		Size: 25.3 MB (25274091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e21cb193aec1edb5304813fc4d205d0bd7228e2aaaf245b61df1d84ab9a489`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:707dd522be997f5a73f5e3f1a870010655c19ba0493902e06ee9e09e7f0f0bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7a49f92436332554b85ca50d1c5841c5db00bfdb327e23b454728ddc6805535a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e941cbe9918ba87eaaf7c4acd37ad01ea60f69b538c6e99a3fa60c33ee59864`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:42:36 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 04 Nov 2017 18:42:39 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 04 Nov 2017 18:42:39 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 04 Nov 2017 18:42:40 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 04 Nov 2017 18:43:01 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:43:01 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 18:43:01 GMT
WORKDIR /data
# Sat, 04 Nov 2017 18:43:01 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 04 Nov 2017 18:43:01 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b75d7eb89b1b70568ef43591e3646843b888fe35fac19ac82af36e1d7f8b4`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0924273b8b2d4a1c7786f178e39be9acd4792eb44c1d78e9b0a945cc4f05ec5`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a96398b6ae54d1a1703e160cc10ea3185b89d000ba0ee5379870b3bf458045a`  
		Last Modified: Sat, 04 Nov 2017 18:43:16 GMT  
		Size: 25.3 MB (25274091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e21cb193aec1edb5304813fc4d205d0bd7228e2aaaf245b61df1d84ab9a489`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:707dd522be997f5a73f5e3f1a870010655c19ba0493902e06ee9e09e7f0f0bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7a49f92436332554b85ca50d1c5841c5db00bfdb327e23b454728ddc6805535a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e941cbe9918ba87eaaf7c4acd37ad01ea60f69b538c6e99a3fa60c33ee59864`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:42:36 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 04 Nov 2017 18:42:39 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 04 Nov 2017 18:42:39 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 04 Nov 2017 18:42:40 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 04 Nov 2017 18:43:01 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:43:01 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 18:43:01 GMT
WORKDIR /data
# Sat, 04 Nov 2017 18:43:01 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 04 Nov 2017 18:43:01 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b75d7eb89b1b70568ef43591e3646843b888fe35fac19ac82af36e1d7f8b4`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0924273b8b2d4a1c7786f178e39be9acd4792eb44c1d78e9b0a945cc4f05ec5`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a96398b6ae54d1a1703e160cc10ea3185b89d000ba0ee5379870b3bf458045a`  
		Last Modified: Sat, 04 Nov 2017 18:43:16 GMT  
		Size: 25.3 MB (25274091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e21cb193aec1edb5304813fc4d205d0bd7228e2aaaf245b61df1d84ab9a489`  
		Last Modified: Sat, 04 Nov 2017 18:43:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:62102f827b3ce3ebfcbcc5e3a7fa9df5fe2da564937656f305fd112aca9b89bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

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
