<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1`](#irssi1)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1.0.5`](#irssi105)
-	[`irssi:1.0.5-alpine`](#irssi105-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)
-	[`irssi:latest`](#irssilatest)

## `irssi:1`

```console
$ docker pull irssi@sha256:10bcdc8da9ba0cb8334d9e33a748422e985962a8fc63935e220784b0e253b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1` - linux; amd64

```console
$ docker pull irssi@sha256:db1d69eb4e5c28eeb5e5afa6e6d6d0dae8eac85b74c8b85b0519b2dd736f8bde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98092363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d266150ee8a60f3c6580397a6aeb7fdf5f79de171ef901f62198671a4355512`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:34:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:34:31 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:34:32 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:34:32 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:47:35 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:48:42 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:48:42 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:48:42 GMT
USER [user]
# Mon, 23 Oct 2017 19:48:42 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42746b34022d0226be08db2d4f95595ef6ee3b8ce47f11ec2ce705333b5fad53`  
		Last Modified: Mon, 09 Oct 2017 23:40:24 GMT  
		Size: 33.0 MB (33032293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a2b145fe1cb775d892ea61309b52eb1bfbe248ef93623288cdc0989dcc8652`  
		Last Modified: Mon, 09 Oct 2017 23:40:14 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54cb8dc432db6adb4e1c3b1fa70f067221bb6a1a1039b6d3a167784562b1a8f`  
		Last Modified: Mon, 23 Oct 2017 19:50:06 GMT  
		Size: 12.5 MB (12460524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:ebdd949e0b05ecf8bad9c3697661bacf074ff836d51480802867b4eb54771113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97402565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f7d3eed2b41963b1ab0dc22ead3f6bdc8ef0aac92282faae92a2825ee30256`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:29:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:29:15 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 01:29:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 01:29:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 03:17:21 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 03:23:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 03:23:07 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 03:23:09 GMT
USER [user]
# Tue, 24 Oct 2017 03:23:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b58fa19c4a7cf4bcb051a5cfb06120df1865c504ea06dc535df948461ea5`  
		Last Modified: Tue, 10 Oct 2017 01:42:25 GMT  
		Size: 32.9 MB (32864143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9b90351373b158b1338e15660e9af7373f453086719bfdca3a9af051fc3c3`  
		Last Modified: Tue, 10 Oct 2017 01:42:17 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850c45958f0ef72830a8902effd4754ee32376e2b782ea3901227d74f83078e6`  
		Last Modified: Tue, 24 Oct 2017 03:23:29 GMT  
		Size: 12.7 MB (12724219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:10bcdc8da9ba0cb8334d9e33a748422e985962a8fc63935e220784b0e253b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1.0` - linux; amd64

```console
$ docker pull irssi@sha256:db1d69eb4e5c28eeb5e5afa6e6d6d0dae8eac85b74c8b85b0519b2dd736f8bde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98092363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d266150ee8a60f3c6580397a6aeb7fdf5f79de171ef901f62198671a4355512`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:34:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:34:31 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:34:32 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:34:32 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:47:35 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:48:42 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:48:42 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:48:42 GMT
USER [user]
# Mon, 23 Oct 2017 19:48:42 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42746b34022d0226be08db2d4f95595ef6ee3b8ce47f11ec2ce705333b5fad53`  
		Last Modified: Mon, 09 Oct 2017 23:40:24 GMT  
		Size: 33.0 MB (33032293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a2b145fe1cb775d892ea61309b52eb1bfbe248ef93623288cdc0989dcc8652`  
		Last Modified: Mon, 09 Oct 2017 23:40:14 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54cb8dc432db6adb4e1c3b1fa70f067221bb6a1a1039b6d3a167784562b1a8f`  
		Last Modified: Mon, 23 Oct 2017 19:50:06 GMT  
		Size: 12.5 MB (12460524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; ppc64le

```console
$ docker pull irssi@sha256:ebdd949e0b05ecf8bad9c3697661bacf074ff836d51480802867b4eb54771113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97402565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f7d3eed2b41963b1ab0dc22ead3f6bdc8ef0aac92282faae92a2825ee30256`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:29:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:29:15 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 01:29:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 01:29:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 03:17:21 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 03:23:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 03:23:07 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 03:23:09 GMT
USER [user]
# Tue, 24 Oct 2017 03:23:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b58fa19c4a7cf4bcb051a5cfb06120df1865c504ea06dc535df948461ea5`  
		Last Modified: Tue, 10 Oct 2017 01:42:25 GMT  
		Size: 32.9 MB (32864143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9b90351373b158b1338e15660e9af7373f453086719bfdca3a9af051fc3c3`  
		Last Modified: Tue, 10 Oct 2017 01:42:17 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850c45958f0ef72830a8902effd4754ee32376e2b782ea3901227d74f83078e6`  
		Last Modified: Tue, 24 Oct 2017 03:23:29 GMT  
		Size: 12.7 MB (12724219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.5`

```console
$ docker pull irssi@sha256:10bcdc8da9ba0cb8334d9e33a748422e985962a8fc63935e220784b0e253b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1.0.5` - linux; amd64

```console
$ docker pull irssi@sha256:db1d69eb4e5c28eeb5e5afa6e6d6d0dae8eac85b74c8b85b0519b2dd736f8bde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98092363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d266150ee8a60f3c6580397a6aeb7fdf5f79de171ef901f62198671a4355512`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:34:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:34:31 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:34:32 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:34:32 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:47:35 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:48:42 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:48:42 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:48:42 GMT
USER [user]
# Mon, 23 Oct 2017 19:48:42 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42746b34022d0226be08db2d4f95595ef6ee3b8ce47f11ec2ce705333b5fad53`  
		Last Modified: Mon, 09 Oct 2017 23:40:24 GMT  
		Size: 33.0 MB (33032293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a2b145fe1cb775d892ea61309b52eb1bfbe248ef93623288cdc0989dcc8652`  
		Last Modified: Mon, 09 Oct 2017 23:40:14 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54cb8dc432db6adb4e1c3b1fa70f067221bb6a1a1039b6d3a167784562b1a8f`  
		Last Modified: Mon, 23 Oct 2017 19:50:06 GMT  
		Size: 12.5 MB (12460524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:ebdd949e0b05ecf8bad9c3697661bacf074ff836d51480802867b4eb54771113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97402565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f7d3eed2b41963b1ab0dc22ead3f6bdc8ef0aac92282faae92a2825ee30256`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:29:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:29:15 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 01:29:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 01:29:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 03:17:21 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 03:23:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 03:23:07 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 03:23:09 GMT
USER [user]
# Tue, 24 Oct 2017 03:23:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b58fa19c4a7cf4bcb051a5cfb06120df1865c504ea06dc535df948461ea5`  
		Last Modified: Tue, 10 Oct 2017 01:42:25 GMT  
		Size: 32.9 MB (32864143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9b90351373b158b1338e15660e9af7373f453086719bfdca3a9af051fc3c3`  
		Last Modified: Tue, 10 Oct 2017 01:42:17 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850c45958f0ef72830a8902effd4754ee32376e2b782ea3901227d74f83078e6`  
		Last Modified: Tue, 24 Oct 2017 03:23:29 GMT  
		Size: 12.7 MB (12724219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.5-alpine`

```console
$ docker pull irssi@sha256:9df1be81032091fa7e31fdc8c92ff0e8b0e552af23e795153219963e400ab3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.0.5-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:5bb8fe2fd63e3124af76f5a09c631d2317da026740c982f143c3cabf31c2e932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19152838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6154727fccc31a8be802fb08cdf7ef3d8da76a45ba20e3ee6cab4d672026033`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 10:51:00 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 19 Sep 2017 10:51:00 GMT
ENV HOME=/home/user
# Tue, 19 Sep 2017 10:51:01 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 19 Sep 2017 10:51:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:48:50 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:49:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 23 Oct 2017 19:49:46 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:49:46 GMT
USER [user]
# Mon, 23 Oct 2017 19:49:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f90494e7f1e5e8418d5dac1d0ae46b42c9a5d3d5b27f847316cee913f11d841`  
		Last Modified: Tue, 19 Sep 2017 10:51:53 GMT  
		Size: 351.4 KB (351406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae9bfcf8e8cd85ec3175b39c59b6c117c86ce0c0855283fb7755d174b4b9355`  
		Last Modified: Tue, 19 Sep 2017 10:51:52 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9cdefceeaf60de4535461cb1b341579dd9c20aead31e6136afe0fbf7c7eeaa`  
		Last Modified: Mon, 23 Oct 2017 19:50:47 GMT  
		Size: 16.8 MB (16809767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:9df1be81032091fa7e31fdc8c92ff0e8b0e552af23e795153219963e400ab3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:5bb8fe2fd63e3124af76f5a09c631d2317da026740c982f143c3cabf31c2e932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19152838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6154727fccc31a8be802fb08cdf7ef3d8da76a45ba20e3ee6cab4d672026033`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 10:51:00 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 19 Sep 2017 10:51:00 GMT
ENV HOME=/home/user
# Tue, 19 Sep 2017 10:51:01 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 19 Sep 2017 10:51:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:48:50 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:49:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 23 Oct 2017 19:49:46 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:49:46 GMT
USER [user]
# Mon, 23 Oct 2017 19:49:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f90494e7f1e5e8418d5dac1d0ae46b42c9a5d3d5b27f847316cee913f11d841`  
		Last Modified: Tue, 19 Sep 2017 10:51:53 GMT  
		Size: 351.4 KB (351406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae9bfcf8e8cd85ec3175b39c59b6c117c86ce0c0855283fb7755d174b4b9355`  
		Last Modified: Tue, 19 Sep 2017 10:51:52 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9cdefceeaf60de4535461cb1b341579dd9c20aead31e6136afe0fbf7c7eeaa`  
		Last Modified: Mon, 23 Oct 2017 19:50:47 GMT  
		Size: 16.8 MB (16809767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:9df1be81032091fa7e31fdc8c92ff0e8b0e552af23e795153219963e400ab3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:5bb8fe2fd63e3124af76f5a09c631d2317da026740c982f143c3cabf31c2e932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19152838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6154727fccc31a8be802fb08cdf7ef3d8da76a45ba20e3ee6cab4d672026033`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 10:51:00 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 19 Sep 2017 10:51:00 GMT
ENV HOME=/home/user
# Tue, 19 Sep 2017 10:51:01 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 19 Sep 2017 10:51:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:48:50 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:49:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 23 Oct 2017 19:49:46 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:49:46 GMT
USER [user]
# Mon, 23 Oct 2017 19:49:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f90494e7f1e5e8418d5dac1d0ae46b42c9a5d3d5b27f847316cee913f11d841`  
		Last Modified: Tue, 19 Sep 2017 10:51:53 GMT  
		Size: 351.4 KB (351406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae9bfcf8e8cd85ec3175b39c59b6c117c86ce0c0855283fb7755d174b4b9355`  
		Last Modified: Tue, 19 Sep 2017 10:51:52 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9cdefceeaf60de4535461cb1b341579dd9c20aead31e6136afe0fbf7c7eeaa`  
		Last Modified: Mon, 23 Oct 2017 19:50:47 GMT  
		Size: 16.8 MB (16809767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:9df1be81032091fa7e31fdc8c92ff0e8b0e552af23e795153219963e400ab3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

```console
$ docker pull irssi@sha256:5bb8fe2fd63e3124af76f5a09c631d2317da026740c982f143c3cabf31c2e932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19152838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6154727fccc31a8be802fb08cdf7ef3d8da76a45ba20e3ee6cab4d672026033`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 10:51:00 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 19 Sep 2017 10:51:00 GMT
ENV HOME=/home/user
# Tue, 19 Sep 2017 10:51:01 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 19 Sep 2017 10:51:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:48:50 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:49:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 23 Oct 2017 19:49:46 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:49:46 GMT
USER [user]
# Mon, 23 Oct 2017 19:49:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f90494e7f1e5e8418d5dac1d0ae46b42c9a5d3d5b27f847316cee913f11d841`  
		Last Modified: Tue, 19 Sep 2017 10:51:53 GMT  
		Size: 351.4 KB (351406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae9bfcf8e8cd85ec3175b39c59b6c117c86ce0c0855283fb7755d174b4b9355`  
		Last Modified: Tue, 19 Sep 2017 10:51:52 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9cdefceeaf60de4535461cb1b341579dd9c20aead31e6136afe0fbf7c7eeaa`  
		Last Modified: Mon, 23 Oct 2017 19:50:47 GMT  
		Size: 16.8 MB (16809767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:10bcdc8da9ba0cb8334d9e33a748422e985962a8fc63935e220784b0e253b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:latest` - linux; amd64

```console
$ docker pull irssi@sha256:db1d69eb4e5c28eeb5e5afa6e6d6d0dae8eac85b74c8b85b0519b2dd736f8bde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98092363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d266150ee8a60f3c6580397a6aeb7fdf5f79de171ef901f62198671a4355512`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:34:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:34:31 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:34:32 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:34:32 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 19:47:35 GMT
ENV IRSSI_VERSION=1.0.5
# Mon, 23 Oct 2017 19:48:42 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 23 Oct 2017 19:48:42 GMT
WORKDIR /home/user
# Mon, 23 Oct 2017 19:48:42 GMT
USER [user]
# Mon, 23 Oct 2017 19:48:42 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42746b34022d0226be08db2d4f95595ef6ee3b8ce47f11ec2ce705333b5fad53`  
		Last Modified: Mon, 09 Oct 2017 23:40:24 GMT  
		Size: 33.0 MB (33032293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a2b145fe1cb775d892ea61309b52eb1bfbe248ef93623288cdc0989dcc8652`  
		Last Modified: Mon, 09 Oct 2017 23:40:14 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54cb8dc432db6adb4e1c3b1fa70f067221bb6a1a1039b6d3a167784562b1a8f`  
		Last Modified: Mon, 23 Oct 2017 19:50:06 GMT  
		Size: 12.5 MB (12460524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:ebdd949e0b05ecf8bad9c3697661bacf074ff836d51480802867b4eb54771113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97402565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f7d3eed2b41963b1ab0dc22ead3f6bdc8ef0aac92282faae92a2825ee30256`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:29:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:29:15 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 01:29:25 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 01:29:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 03:17:21 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 03:23:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 03:23:07 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 03:23:09 GMT
USER [user]
# Tue, 24 Oct 2017 03:23:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc7b58fa19c4a7cf4bcb051a5cfb06120df1865c504ea06dc535df948461ea5`  
		Last Modified: Tue, 10 Oct 2017 01:42:25 GMT  
		Size: 32.9 MB (32864143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9b90351373b158b1338e15660e9af7373f453086719bfdca3a9af051fc3c3`  
		Last Modified: Tue, 10 Oct 2017 01:42:17 GMT  
		Size: 4.5 KB (4464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850c45958f0ef72830a8902effd4754ee32376e2b782ea3901227d74f83078e6`  
		Last Modified: Tue, 24 Oct 2017 03:23:29 GMT  
		Size: 12.7 MB (12724219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
