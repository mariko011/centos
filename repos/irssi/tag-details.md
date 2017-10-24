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
$ docker pull irssi@sha256:0c45eeaaa18b2b46059b736d2ada954d151035429fa806f7afde0f1cfdc29986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:865de78695e6581994ff659013e8c90f38c02dedf2f13ef371d7a908bdd90368
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94377759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005cfb8c6f35dbdacb785a73879efe04841bc48ffcc9a34e83fa5151813222ba`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:29 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:19:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:19:31 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 06:48:23 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 06:49:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:49:53 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 06:49:53 GMT
USER [user]
# Tue, 24 Oct 2017 06:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada134863e533e414941fd301763255df53523cd59bd547bf569b79863eddc0`  
		Last Modified: Mon, 09 Oct 2017 22:21:50 GMT  
		Size: 31.7 MB (31715264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa199c78e4a9f8e03cfe722738b24ef0a1b664f40f736a839ac05de639cd8b5`  
		Last Modified: Mon, 09 Oct 2017 22:21:38 GMT  
		Size: 4.4 KB (4434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a43c9bc7a2d493379203725c52b3da30ba58571e56f6bf13fc198466dc3bb`  
		Last Modified: Tue, 24 Oct 2017 06:50:20 GMT  
		Size: 11.8 MB (11778167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d52c2b6579b2040ef7a1d568ede7568b374acfe94a29cee2363f2c253cde03fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91477534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5bfae05cd6ff39109e3f1eb1023c203c5820972d572801c23878ae6a10e1c0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:33:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:33:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 16:04:30 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 16:05:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 16:05:49 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 16:05:49 GMT
USER [user]
# Tue, 24 Oct 2017 16:05:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0fb7e78d77af00bac5b8e4f10a5ea995ed78fb9a4259441a6bb574dda49c35`  
		Last Modified: Mon, 09 Oct 2017 22:35:26 GMT  
		Size: 31.3 MB (31256551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0467327ba86d2162218d7354f1dcbe262f2bd4eafdae706bc46637df21aebdb8`  
		Last Modified: Mon, 09 Oct 2017 22:35:16 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17a9b2bffce29b512e15d27a13b23449909f9f322996cb0206b5c7c55e834e`  
		Last Modified: Tue, 24 Oct 2017 16:06:13 GMT  
		Size: 11.5 MB (11530240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:36e0516486b4d97ff94e1126bbca1a2e64ba7e2a177b842d2ed992406bf70174
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7286797073d7e0fd21d4a2401ed908cad1ad1153bf699d0ede605603e1a1e17e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:34 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 00:19:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 00:19:39 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 05:10:44 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 05:13:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 05:13:28 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 05:13:28 GMT
USER [user]
# Tue, 24 Oct 2017 05:13:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3a71dbd8eca99354bb0c9ce6a49f6dfb71c4e21fe1d765a5a1732e4e069ff`  
		Last Modified: Tue, 10 Oct 2017 00:24:30 GMT  
		Size: 31.9 MB (31883997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6971f6e398eee812440482b9934ee9640e1c65e649900f7503eda2ecff99b0ce`  
		Last Modified: Tue, 10 Oct 2017 00:24:19 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8681abed4721ea7211674dcbb66742a60a641af67ea0eb16b7e74b520b27888b`  
		Last Modified: Tue, 24 Oct 2017 05:14:05 GMT  
		Size: 12.0 MB (12045138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:e42d769d023daec4f24a4d3ded8ecb079003538f65bb298e0b84a1ac78ed56ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16244e7765b959a6810865af8cb3c0903d81ddf2993de3de4ae0b14da8c43aff`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:57:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:57:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:57:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:57:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 13:18:31 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 13:20:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 13:20:17 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 13:20:17 GMT
USER [user]
# Tue, 24 Oct 2017 13:20:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad291e2f7d6e164265772fa789a02889c936617f8d3eee4093acf1850905f1f`  
		Last Modified: Mon, 09 Oct 2017 23:59:41 GMT  
		Size: 34.7 MB (34729337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bda6bff4bf5eda7c49a6dd4be86139c355e3e5f02ef0c0fef788f52ef673e2`  
		Last Modified: Mon, 09 Oct 2017 23:59:35 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeb85c4fc52a3ee4db6a7b554a70d59dcaa2c8940e8eb133cb26780afd98ec9`  
		Last Modified: Tue, 24 Oct 2017 13:20:39 GMT  
		Size: 14.5 MB (14450263 bytes)  
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

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:67553125eedd55e3bfdb7dae130074d30db510778f281b40f8a6211e1b6507eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98799090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a3f697a7210b18ee99733e5fb905523dad35bd72fac9eac175695c7486788b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:38:42 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:38:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:38:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 08:45:27 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 08:46:26 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 08:46:27 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 08:46:27 GMT
USER [user]
# Tue, 24 Oct 2017 08:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7172f74a29d08679a399b57d2b4aa8f845c9f88a21977e57ab7abe27529bc7`  
		Last Modified: Mon, 09 Oct 2017 22:40:12 GMT  
		Size: 33.5 MB (33544846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787649b92c84d4738453f91567eb8b3e1770ac74d3265a7710c554e0af0f9679`  
		Last Modified: Mon, 09 Oct 2017 22:40:04 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e857c805f24bd19cc9cd80f0422d6b29f4ce56549983ddf8fbf46045fbfd7`  
		Last Modified: Tue, 24 Oct 2017 08:46:42 GMT  
		Size: 12.5 MB (12460950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:0c45eeaaa18b2b46059b736d2ada954d151035429fa806f7afde0f1cfdc29986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `irssi:1.0` - linux; arm variant v5

```console
$ docker pull irssi@sha256:865de78695e6581994ff659013e8c90f38c02dedf2f13ef371d7a908bdd90368
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94377759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005cfb8c6f35dbdacb785a73879efe04841bc48ffcc9a34e83fa5151813222ba`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:29 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:19:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:19:31 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 06:48:23 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 06:49:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:49:53 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 06:49:53 GMT
USER [user]
# Tue, 24 Oct 2017 06:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada134863e533e414941fd301763255df53523cd59bd547bf569b79863eddc0`  
		Last Modified: Mon, 09 Oct 2017 22:21:50 GMT  
		Size: 31.7 MB (31715264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa199c78e4a9f8e03cfe722738b24ef0a1b664f40f736a839ac05de639cd8b5`  
		Last Modified: Mon, 09 Oct 2017 22:21:38 GMT  
		Size: 4.4 KB (4434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a43c9bc7a2d493379203725c52b3da30ba58571e56f6bf13fc198466dc3bb`  
		Last Modified: Tue, 24 Oct 2017 06:50:20 GMT  
		Size: 11.8 MB (11778167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d52c2b6579b2040ef7a1d568ede7568b374acfe94a29cee2363f2c253cde03fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91477534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5bfae05cd6ff39109e3f1eb1023c203c5820972d572801c23878ae6a10e1c0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:33:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:33:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 16:04:30 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 16:05:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 16:05:49 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 16:05:49 GMT
USER [user]
# Tue, 24 Oct 2017 16:05:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0fb7e78d77af00bac5b8e4f10a5ea995ed78fb9a4259441a6bb574dda49c35`  
		Last Modified: Mon, 09 Oct 2017 22:35:26 GMT  
		Size: 31.3 MB (31256551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0467327ba86d2162218d7354f1dcbe262f2bd4eafdae706bc46637df21aebdb8`  
		Last Modified: Mon, 09 Oct 2017 22:35:16 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17a9b2bffce29b512e15d27a13b23449909f9f322996cb0206b5c7c55e834e`  
		Last Modified: Tue, 24 Oct 2017 16:06:13 GMT  
		Size: 11.5 MB (11530240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:36e0516486b4d97ff94e1126bbca1a2e64ba7e2a177b842d2ed992406bf70174
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7286797073d7e0fd21d4a2401ed908cad1ad1153bf699d0ede605603e1a1e17e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:34 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 00:19:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 00:19:39 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 05:10:44 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 05:13:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 05:13:28 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 05:13:28 GMT
USER [user]
# Tue, 24 Oct 2017 05:13:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3a71dbd8eca99354bb0c9ce6a49f6dfb71c4e21fe1d765a5a1732e4e069ff`  
		Last Modified: Tue, 10 Oct 2017 00:24:30 GMT  
		Size: 31.9 MB (31883997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6971f6e398eee812440482b9934ee9640e1c65e649900f7503eda2ecff99b0ce`  
		Last Modified: Tue, 10 Oct 2017 00:24:19 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8681abed4721ea7211674dcbb66742a60a641af67ea0eb16b7e74b520b27888b`  
		Last Modified: Tue, 24 Oct 2017 05:14:05 GMT  
		Size: 12.0 MB (12045138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; 386

```console
$ docker pull irssi@sha256:e42d769d023daec4f24a4d3ded8ecb079003538f65bb298e0b84a1ac78ed56ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16244e7765b959a6810865af8cb3c0903d81ddf2993de3de4ae0b14da8c43aff`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:57:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:57:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:57:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:57:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 13:18:31 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 13:20:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 13:20:17 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 13:20:17 GMT
USER [user]
# Tue, 24 Oct 2017 13:20:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad291e2f7d6e164265772fa789a02889c936617f8d3eee4093acf1850905f1f`  
		Last Modified: Mon, 09 Oct 2017 23:59:41 GMT  
		Size: 34.7 MB (34729337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bda6bff4bf5eda7c49a6dd4be86139c355e3e5f02ef0c0fef788f52ef673e2`  
		Last Modified: Mon, 09 Oct 2017 23:59:35 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeb85c4fc52a3ee4db6a7b554a70d59dcaa2c8940e8eb133cb26780afd98ec9`  
		Last Modified: Tue, 24 Oct 2017 13:20:39 GMT  
		Size: 14.5 MB (14450263 bytes)  
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

### `irssi:1.0` - linux; s390x

```console
$ docker pull irssi@sha256:67553125eedd55e3bfdb7dae130074d30db510778f281b40f8a6211e1b6507eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98799090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a3f697a7210b18ee99733e5fb905523dad35bd72fac9eac175695c7486788b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:38:42 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:38:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:38:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 08:45:27 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 08:46:26 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 08:46:27 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 08:46:27 GMT
USER [user]
# Tue, 24 Oct 2017 08:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7172f74a29d08679a399b57d2b4aa8f845c9f88a21977e57ab7abe27529bc7`  
		Last Modified: Mon, 09 Oct 2017 22:40:12 GMT  
		Size: 33.5 MB (33544846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787649b92c84d4738453f91567eb8b3e1770ac74d3265a7710c554e0af0f9679`  
		Last Modified: Mon, 09 Oct 2017 22:40:04 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e857c805f24bd19cc9cd80f0422d6b29f4ce56549983ddf8fbf46045fbfd7`  
		Last Modified: Tue, 24 Oct 2017 08:46:42 GMT  
		Size: 12.5 MB (12460950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.5`

```console
$ docker pull irssi@sha256:0c45eeaaa18b2b46059b736d2ada954d151035429fa806f7afde0f1cfdc29986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `irssi:1.0.5` - linux; arm variant v5

```console
$ docker pull irssi@sha256:865de78695e6581994ff659013e8c90f38c02dedf2f13ef371d7a908bdd90368
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94377759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005cfb8c6f35dbdacb785a73879efe04841bc48ffcc9a34e83fa5151813222ba`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:29 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:19:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:19:31 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 06:48:23 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 06:49:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:49:53 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 06:49:53 GMT
USER [user]
# Tue, 24 Oct 2017 06:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada134863e533e414941fd301763255df53523cd59bd547bf569b79863eddc0`  
		Last Modified: Mon, 09 Oct 2017 22:21:50 GMT  
		Size: 31.7 MB (31715264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa199c78e4a9f8e03cfe722738b24ef0a1b664f40f736a839ac05de639cd8b5`  
		Last Modified: Mon, 09 Oct 2017 22:21:38 GMT  
		Size: 4.4 KB (4434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a43c9bc7a2d493379203725c52b3da30ba58571e56f6bf13fc198466dc3bb`  
		Last Modified: Tue, 24 Oct 2017 06:50:20 GMT  
		Size: 11.8 MB (11778167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.5` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d52c2b6579b2040ef7a1d568ede7568b374acfe94a29cee2363f2c253cde03fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91477534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5bfae05cd6ff39109e3f1eb1023c203c5820972d572801c23878ae6a10e1c0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:33:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:33:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 16:04:30 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 16:05:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 16:05:49 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 16:05:49 GMT
USER [user]
# Tue, 24 Oct 2017 16:05:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0fb7e78d77af00bac5b8e4f10a5ea995ed78fb9a4259441a6bb574dda49c35`  
		Last Modified: Mon, 09 Oct 2017 22:35:26 GMT  
		Size: 31.3 MB (31256551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0467327ba86d2162218d7354f1dcbe262f2bd4eafdae706bc46637df21aebdb8`  
		Last Modified: Mon, 09 Oct 2017 22:35:16 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17a9b2bffce29b512e15d27a13b23449909f9f322996cb0206b5c7c55e834e`  
		Last Modified: Tue, 24 Oct 2017 16:06:13 GMT  
		Size: 11.5 MB (11530240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:36e0516486b4d97ff94e1126bbca1a2e64ba7e2a177b842d2ed992406bf70174
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7286797073d7e0fd21d4a2401ed908cad1ad1153bf699d0ede605603e1a1e17e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:34 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 00:19:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 00:19:39 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 05:10:44 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 05:13:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 05:13:28 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 05:13:28 GMT
USER [user]
# Tue, 24 Oct 2017 05:13:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3a71dbd8eca99354bb0c9ce6a49f6dfb71c4e21fe1d765a5a1732e4e069ff`  
		Last Modified: Tue, 10 Oct 2017 00:24:30 GMT  
		Size: 31.9 MB (31883997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6971f6e398eee812440482b9934ee9640e1c65e649900f7503eda2ecff99b0ce`  
		Last Modified: Tue, 10 Oct 2017 00:24:19 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8681abed4721ea7211674dcbb66742a60a641af67ea0eb16b7e74b520b27888b`  
		Last Modified: Tue, 24 Oct 2017 05:14:05 GMT  
		Size: 12.0 MB (12045138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.5` - linux; 386

```console
$ docker pull irssi@sha256:e42d769d023daec4f24a4d3ded8ecb079003538f65bb298e0b84a1ac78ed56ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16244e7765b959a6810865af8cb3c0903d81ddf2993de3de4ae0b14da8c43aff`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:57:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:57:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:57:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:57:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 13:18:31 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 13:20:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 13:20:17 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 13:20:17 GMT
USER [user]
# Tue, 24 Oct 2017 13:20:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad291e2f7d6e164265772fa789a02889c936617f8d3eee4093acf1850905f1f`  
		Last Modified: Mon, 09 Oct 2017 23:59:41 GMT  
		Size: 34.7 MB (34729337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bda6bff4bf5eda7c49a6dd4be86139c355e3e5f02ef0c0fef788f52ef673e2`  
		Last Modified: Mon, 09 Oct 2017 23:59:35 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeb85c4fc52a3ee4db6a7b554a70d59dcaa2c8940e8eb133cb26780afd98ec9`  
		Last Modified: Tue, 24 Oct 2017 13:20:39 GMT  
		Size: 14.5 MB (14450263 bytes)  
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

### `irssi:1.0.5` - linux; s390x

```console
$ docker pull irssi@sha256:67553125eedd55e3bfdb7dae130074d30db510778f281b40f8a6211e1b6507eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98799090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a3f697a7210b18ee99733e5fb905523dad35bd72fac9eac175695c7486788b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:38:42 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:38:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:38:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 08:45:27 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 08:46:26 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 08:46:27 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 08:46:27 GMT
USER [user]
# Tue, 24 Oct 2017 08:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7172f74a29d08679a399b57d2b4aa8f845c9f88a21977e57ab7abe27529bc7`  
		Last Modified: Mon, 09 Oct 2017 22:40:12 GMT  
		Size: 33.5 MB (33544846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787649b92c84d4738453f91567eb8b3e1770ac74d3265a7710c554e0af0f9679`  
		Last Modified: Mon, 09 Oct 2017 22:40:04 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e857c805f24bd19cc9cd80f0422d6b29f4ce56549983ddf8fbf46045fbfd7`  
		Last Modified: Tue, 24 Oct 2017 08:46:42 GMT  
		Size: 12.5 MB (12460950 bytes)  
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
$ docker pull irssi@sha256:0c45eeaaa18b2b46059b736d2ada954d151035429fa806f7afde0f1cfdc29986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:865de78695e6581994ff659013e8c90f38c02dedf2f13ef371d7a908bdd90368
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94377759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005cfb8c6f35dbdacb785a73879efe04841bc48ffcc9a34e83fa5151813222ba`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:29 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:19:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:19:31 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 06:48:23 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 06:49:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 06:49:53 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 06:49:53 GMT
USER [user]
# Tue, 24 Oct 2017 06:49:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada134863e533e414941fd301763255df53523cd59bd547bf569b79863eddc0`  
		Last Modified: Mon, 09 Oct 2017 22:21:50 GMT  
		Size: 31.7 MB (31715264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa199c78e4a9f8e03cfe722738b24ef0a1b664f40f736a839ac05de639cd8b5`  
		Last Modified: Mon, 09 Oct 2017 22:21:38 GMT  
		Size: 4.4 KB (4434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a43c9bc7a2d493379203725c52b3da30ba58571e56f6bf13fc198466dc3bb`  
		Last Modified: Tue, 24 Oct 2017 06:50:20 GMT  
		Size: 11.8 MB (11778167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d52c2b6579b2040ef7a1d568ede7568b374acfe94a29cee2363f2c253cde03fb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91477534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5bfae05cd6ff39109e3f1eb1023c203c5820972d572801c23878ae6a10e1c0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:33:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:33:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 16:04:30 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 16:05:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 16:05:49 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 16:05:49 GMT
USER [user]
# Tue, 24 Oct 2017 16:05:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0fb7e78d77af00bac5b8e4f10a5ea995ed78fb9a4259441a6bb574dda49c35`  
		Last Modified: Mon, 09 Oct 2017 22:35:26 GMT  
		Size: 31.3 MB (31256551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0467327ba86d2162218d7354f1dcbe262f2bd4eafdae706bc46637df21aebdb8`  
		Last Modified: Mon, 09 Oct 2017 22:35:16 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17a9b2bffce29b512e15d27a13b23449909f9f322996cb0206b5c7c55e834e`  
		Last Modified: Tue, 24 Oct 2017 16:06:13 GMT  
		Size: 11.5 MB (11530240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:36e0516486b4d97ff94e1126bbca1a2e64ba7e2a177b842d2ed992406bf70174
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7286797073d7e0fd21d4a2401ed908cad1ad1153bf699d0ede605603e1a1e17e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:34 GMT
ENV HOME=/home/user
# Tue, 10 Oct 2017 00:19:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 10 Oct 2017 00:19:39 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 05:10:44 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 05:13:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 05:13:28 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 05:13:28 GMT
USER [user]
# Tue, 24 Oct 2017 05:13:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3a71dbd8eca99354bb0c9ce6a49f6dfb71c4e21fe1d765a5a1732e4e069ff`  
		Last Modified: Tue, 10 Oct 2017 00:24:30 GMT  
		Size: 31.9 MB (31883997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6971f6e398eee812440482b9934ee9640e1c65e649900f7503eda2ecff99b0ce`  
		Last Modified: Tue, 10 Oct 2017 00:24:19 GMT  
		Size: 4.4 KB (4440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8681abed4721ea7211674dcbb66742a60a641af67ea0eb16b7e74b520b27888b`  
		Last Modified: Tue, 24 Oct 2017 05:14:05 GMT  
		Size: 12.0 MB (12045138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:e42d769d023daec4f24a4d3ded8ecb079003538f65bb298e0b84a1ac78ed56ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16244e7765b959a6810865af8cb3c0903d81ddf2993de3de4ae0b14da8c43aff`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:57:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:57:41 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 23:57:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 23:57:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 13:18:31 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 13:20:16 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 13:20:17 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 13:20:17 GMT
USER [user]
# Tue, 24 Oct 2017 13:20:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad291e2f7d6e164265772fa789a02889c936617f8d3eee4093acf1850905f1f`  
		Last Modified: Mon, 09 Oct 2017 23:59:41 GMT  
		Size: 34.7 MB (34729337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bda6bff4bf5eda7c49a6dd4be86139c355e3e5f02ef0c0fef788f52ef673e2`  
		Last Modified: Mon, 09 Oct 2017 23:59:35 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeb85c4fc52a3ee4db6a7b554a70d59dcaa2c8940e8eb133cb26780afd98ec9`  
		Last Modified: Tue, 24 Oct 2017 13:20:39 GMT  
		Size: 14.5 MB (14450263 bytes)  
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

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:67553125eedd55e3bfdb7dae130074d30db510778f281b40f8a6211e1b6507eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98799090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a3f697a7210b18ee99733e5fb905523dad35bd72fac9eac175695c7486788b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:38:42 GMT
ENV HOME=/home/user
# Mon, 09 Oct 2017 22:38:42 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 09 Oct 2017 22:38:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 08:45:27 GMT
ENV IRSSI_VERSION=1.0.5
# Tue, 24 Oct 2017 08:46:26 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 24 Oct 2017 08:46:27 GMT
WORKDIR /home/user
# Tue, 24 Oct 2017 08:46:27 GMT
USER [user]
# Tue, 24 Oct 2017 08:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7172f74a29d08679a399b57d2b4aa8f845c9f88a21977e57ab7abe27529bc7`  
		Last Modified: Mon, 09 Oct 2017 22:40:12 GMT  
		Size: 33.5 MB (33544846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787649b92c84d4738453f91567eb8b3e1770ac74d3265a7710c554e0af0f9679`  
		Last Modified: Mon, 09 Oct 2017 22:40:04 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e857c805f24bd19cc9cd80f0422d6b29f4ce56549983ddf8fbf46045fbfd7`  
		Last Modified: Tue, 24 Oct 2017 08:46:42 GMT  
		Size: 12.5 MB (12460950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
