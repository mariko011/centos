<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:0.8.19`](#irssi0819)
-	[`irssi:0.8`](#irssi08)
-	[`irssi:0`](#irssi0)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:0.8.19-debian`](#irssi0819-debian)
-	[`irssi:0.8-debian`](#irssi08-debian)
-	[`irssi:0-debian`](#irssi0-debian)
-	[`irssi:debian`](#irssidebian)
-	[`irssi:0.8.19-alpine`](#irssi0819-alpine)
-	[`irssi:0.8-alpine`](#irssi08-alpine)
-	[`irssi:0-alpine`](#irssi0-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:0.8.19`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.19` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.19-debian`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.19-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-debian`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-debian`

```console
$ docker pull irssi@sha256:434024b8ab78dfba26608c734eeee39f6cd776a997f01c670e82d4d8a04093cd
```

-	Platforms:
	-	linux; amd64

### `irssi:0-debian` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93fc3b75d4286061c58704366fdbc40fb78f813f4ba9feb5990f63a5f8159527`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 04:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:40:55 GMT
ENV HOME=/home/user
# Fri, 29 Jul 2016 04:40:57 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 29 Jul 2016 04:40:58 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:40:59 GMT
ENV IRSSI_VERSION=0.8.19
# Fri, 29 Jul 2016 04:43:23 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 04:43:23 GMT
WORKDIR /home/user
# Fri, 29 Jul 2016 04:43:24 GMT
VOLUME [/home/user/.irssi]
# Fri, 29 Jul 2016 04:43:25 GMT
USER [user]
# Fri, 29 Jul 2016 04:43:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347c7401ddc89706307a5c47f446e7e72fade92680d10d2cee281aad44a4f694`  
		Last Modified: Fri, 29 Jul 2016 04:43:45 GMT  
		Size: 32.3 MB (32255936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c39a3fda1be1024c62c032e647ec6a980d8849c62c8c2984d88e4e14581615`  
		Last Modified: Fri, 29 Jul 2016 04:43:35 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cac1963409a44b7a2aaecebe0509ec484c67a6f846957bf5b0dc2f47ca3c496`  
		Last Modified: Fri, 29 Jul 2016 04:43:40 GMT  
		Size: 12.1 MB (12061585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:debian`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.19-alpine`

```console
$ docker pull irssi@sha256:9a1935888b5966bd424b5462f133dcba79f861dfb7a1d076653d5bd02e1796dc
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.19-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19486936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3293d3d5a14432ccbd5e7c76f411609576dc7e8c2afc3abdc6bced2e0849281`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:13 GMT
ADD file:86864edb9037700501e6e016262c29922e0c67762b4525901ca5a8194a078bfb in / 
# Tue, 30 Aug 2016 00:35:49 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 Aug 2016 00:35:49 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 00:35:50 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 00:35:50 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 00:35:50 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 00:36:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:36:30 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 00:36:30 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 00:36:30 GMT
USER [user]
# Tue, 30 Aug 2016 00:36:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6c123565ed5e79b6c944d6da64bd785ad3ec03c6e853dcb733254aebb215ae55`  
		Last Modified: Thu, 23 Jun 2016 19:56:02 GMT  
		Size: 2.3 MB (2320188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375a67e8898e766c2e01593d56ea0ee814ead90a6ed82facb56b895941b0b2e`  
		Last Modified: Thu, 08 Sep 2016 17:44:17 GMT  
		Size: 566.3 KB (566323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a5a1f9666526eb8208a0fccdce93a4b55650968b01f1b678c9fcf36e761829`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41bb8f936aad2cb788ceaa4dd7ab270c24ec74be2bfc267bb1d349637d773db`  
		Last Modified: Thu, 08 Sep 2016 17:44:25 GMT  
		Size: 16.6 MB (16599157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-alpine`

```console
$ docker pull irssi@sha256:9a1935888b5966bd424b5462f133dcba79f861dfb7a1d076653d5bd02e1796dc
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19486936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3293d3d5a14432ccbd5e7c76f411609576dc7e8c2afc3abdc6bced2e0849281`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:13 GMT
ADD file:86864edb9037700501e6e016262c29922e0c67762b4525901ca5a8194a078bfb in / 
# Tue, 30 Aug 2016 00:35:49 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 Aug 2016 00:35:49 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 00:35:50 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 00:35:50 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 00:35:50 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 00:36:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:36:30 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 00:36:30 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 00:36:30 GMT
USER [user]
# Tue, 30 Aug 2016 00:36:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6c123565ed5e79b6c944d6da64bd785ad3ec03c6e853dcb733254aebb215ae55`  
		Last Modified: Thu, 23 Jun 2016 19:56:02 GMT  
		Size: 2.3 MB (2320188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375a67e8898e766c2e01593d56ea0ee814ead90a6ed82facb56b895941b0b2e`  
		Last Modified: Thu, 08 Sep 2016 17:44:17 GMT  
		Size: 566.3 KB (566323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a5a1f9666526eb8208a0fccdce93a4b55650968b01f1b678c9fcf36e761829`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41bb8f936aad2cb788ceaa4dd7ab270c24ec74be2bfc267bb1d349637d773db`  
		Last Modified: Thu, 08 Sep 2016 17:44:25 GMT  
		Size: 16.6 MB (16599157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:9a1935888b5966bd424b5462f133dcba79f861dfb7a1d076653d5bd02e1796dc
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19486936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3293d3d5a14432ccbd5e7c76f411609576dc7e8c2afc3abdc6bced2e0849281`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:13 GMT
ADD file:86864edb9037700501e6e016262c29922e0c67762b4525901ca5a8194a078bfb in / 
# Tue, 30 Aug 2016 00:35:49 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 Aug 2016 00:35:49 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 00:35:50 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 00:35:50 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 00:35:50 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 00:36:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:36:30 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 00:36:30 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 00:36:30 GMT
USER [user]
# Tue, 30 Aug 2016 00:36:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6c123565ed5e79b6c944d6da64bd785ad3ec03c6e853dcb733254aebb215ae55`  
		Last Modified: Thu, 23 Jun 2016 19:56:02 GMT  
		Size: 2.3 MB (2320188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375a67e8898e766c2e01593d56ea0ee814ead90a6ed82facb56b895941b0b2e`  
		Last Modified: Thu, 08 Sep 2016 17:44:17 GMT  
		Size: 566.3 KB (566323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a5a1f9666526eb8208a0fccdce93a4b55650968b01f1b678c9fcf36e761829`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41bb8f936aad2cb788ceaa4dd7ab270c24ec74be2bfc267bb1d349637d773db`  
		Last Modified: Thu, 08 Sep 2016 17:44:25 GMT  
		Size: 16.6 MB (16599157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:9a1935888b5966bd424b5462f133dcba79f861dfb7a1d076653d5bd02e1796dc
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19486936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3293d3d5a14432ccbd5e7c76f411609576dc7e8c2afc3abdc6bced2e0849281`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:13 GMT
ADD file:86864edb9037700501e6e016262c29922e0c67762b4525901ca5a8194a078bfb in / 
# Tue, 30 Aug 2016 00:35:49 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 Aug 2016 00:35:49 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 00:35:50 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 00:35:50 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 00:35:50 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 00:36:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:36:30 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 00:36:30 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 00:36:30 GMT
USER [user]
# Tue, 30 Aug 2016 00:36:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6c123565ed5e79b6c944d6da64bd785ad3ec03c6e853dcb733254aebb215ae55`  
		Last Modified: Thu, 23 Jun 2016 19:56:02 GMT  
		Size: 2.3 MB (2320188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375a67e8898e766c2e01593d56ea0ee814ead90a6ed82facb56b895941b0b2e`  
		Last Modified: Thu, 08 Sep 2016 17:44:17 GMT  
		Size: 566.3 KB (566323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a5a1f9666526eb8208a0fccdce93a4b55650968b01f1b678c9fcf36e761829`  
		Last Modified: Thu, 08 Sep 2016 17:44:18 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41bb8f936aad2cb788ceaa4dd7ab270c24ec74be2bfc267bb1d349637d773db`  
		Last Modified: Thu, 08 Sep 2016 17:44:25 GMT  
		Size: 16.6 MB (16599157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
