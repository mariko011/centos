<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1.0.4`](#irssi104)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1`](#irssi1)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:1.0.4-alpine`](#irssi104-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:1.0.4`

```console
$ docker pull irssi@sha256:46414c58b27b4e837dca6205cbee73e7b5045e52f42d680464150f4fa3c62f0f
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97862031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ee19c2c902db83275e79f3a6219c47f447207af6a2ed9aa64926ff98811e4a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:30:06 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 07:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 07:30:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:30:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 07:31:18 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:31:20 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 07:31:20 GMT
USER [user]
# Fri, 08 Sep 2017 07:31:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4a8f2512f2d87dc99a9ff7b14d93052b9186f80c05196334b8f5c4d1a74519`  
		Last Modified: Fri, 08 Sep 2017 19:32:31 GMT  
		Size: 33.0 MB (33032508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721fb9d4bee13e30e47c0feb2b2185515c8213a8e11a7ec231059782e74f4b2a`  
		Last Modified: Fri, 08 Sep 2017 19:32:20 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ef5be49295a330299f7e9b51371a95c5f45915fd8b4c721546a016eaba3b07`  
		Last Modified: Fri, 08 Sep 2017 19:32:26 GMT  
		Size: 12.2 MB (12229580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:46414c58b27b4e837dca6205cbee73e7b5045e52f42d680464150f4fa3c62f0f
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97862031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ee19c2c902db83275e79f3a6219c47f447207af6a2ed9aa64926ff98811e4a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:30:06 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 07:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 07:30:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:30:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 07:31:18 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:31:20 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 07:31:20 GMT
USER [user]
# Fri, 08 Sep 2017 07:31:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4a8f2512f2d87dc99a9ff7b14d93052b9186f80c05196334b8f5c4d1a74519`  
		Last Modified: Fri, 08 Sep 2017 19:32:31 GMT  
		Size: 33.0 MB (33032508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721fb9d4bee13e30e47c0feb2b2185515c8213a8e11a7ec231059782e74f4b2a`  
		Last Modified: Fri, 08 Sep 2017 19:32:20 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ef5be49295a330299f7e9b51371a95c5f45915fd8b4c721546a016eaba3b07`  
		Last Modified: Fri, 08 Sep 2017 19:32:26 GMT  
		Size: 12.2 MB (12229580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:46414c58b27b4e837dca6205cbee73e7b5045e52f42d680464150f4fa3c62f0f
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97862031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ee19c2c902db83275e79f3a6219c47f447207af6a2ed9aa64926ff98811e4a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:30:06 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 07:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 07:30:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:30:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 07:31:18 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:31:20 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 07:31:20 GMT
USER [user]
# Fri, 08 Sep 2017 07:31:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4a8f2512f2d87dc99a9ff7b14d93052b9186f80c05196334b8f5c4d1a74519`  
		Last Modified: Fri, 08 Sep 2017 19:32:31 GMT  
		Size: 33.0 MB (33032508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721fb9d4bee13e30e47c0feb2b2185515c8213a8e11a7ec231059782e74f4b2a`  
		Last Modified: Fri, 08 Sep 2017 19:32:20 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ef5be49295a330299f7e9b51371a95c5f45915fd8b4c721546a016eaba3b07`  
		Last Modified: Fri, 08 Sep 2017 19:32:26 GMT  
		Size: 12.2 MB (12229580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:46414c58b27b4e837dca6205cbee73e7b5045e52f42d680464150f4fa3c62f0f
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97862031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ee19c2c902db83275e79f3a6219c47f447207af6a2ed9aa64926ff98811e4a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:30:06 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 07:30:11 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 07:30:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:30:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 07:31:18 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 07:31:20 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 07:31:20 GMT
USER [user]
# Fri, 08 Sep 2017 07:31:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4a8f2512f2d87dc99a9ff7b14d93052b9186f80c05196334b8f5c4d1a74519`  
		Last Modified: Fri, 08 Sep 2017 19:32:31 GMT  
		Size: 33.0 MB (33032508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721fb9d4bee13e30e47c0feb2b2185515c8213a8e11a7ec231059782e74f4b2a`  
		Last Modified: Fri, 08 Sep 2017 19:32:20 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ef5be49295a330299f7e9b51371a95c5f45915fd8b4c721546a016eaba3b07`  
		Last Modified: Fri, 08 Sep 2017 19:32:26 GMT  
		Size: 12.2 MB (12229580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.4-alpine`

```console
$ docker pull irssi@sha256:2b05e55a4cf6ee88fcd853a52bd135cbc817e388b2ff073f6bd5133472cd81a8
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b3fff2b07c76882394d49289479096dffa356a9d827ed63785ec789b8ff8d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 13 Jul 2017 16:40:33 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 13 Jul 2017 16:40:34 GMT
ENV HOME=/home/user
# Thu, 13 Jul 2017 16:40:35 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 13 Jul 2017 16:40:35 GMT
ENV LANG=C.UTF-8
# Thu, 13 Jul 2017 16:40:36 GMT
ENV IRSSI_VERSION=1.0.4
# Thu, 13 Jul 2017 17:38:53 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 13 Jul 2017 17:38:53 GMT
WORKDIR /home/user
# Thu, 13 Jul 2017 17:38:54 GMT
USER [user]
# Thu, 13 Jul 2017 17:38:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7b413937b29e82eb7a372183bd69cdfd518796c6846d7094bb5577edb14bd`  
		Last Modified: Thu, 13 Jul 2017 17:40:04 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59364f7392290ddddd79638e6e1a778c3a8b686b44228e8f71068e84d7bec2`  
		Last Modified: Thu, 13 Jul 2017 17:40:03 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5fa4cd657712dbc621c363fb36623f47ab1d46b4a593182c00bf9adb1b874c`  
		Last Modified: Thu, 13 Jul 2017 17:40:09 GMT  
		Size: 16.8 MB (16798236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:2b05e55a4cf6ee88fcd853a52bd135cbc817e388b2ff073f6bd5133472cd81a8
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b3fff2b07c76882394d49289479096dffa356a9d827ed63785ec789b8ff8d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 13 Jul 2017 16:40:33 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 13 Jul 2017 16:40:34 GMT
ENV HOME=/home/user
# Thu, 13 Jul 2017 16:40:35 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 13 Jul 2017 16:40:35 GMT
ENV LANG=C.UTF-8
# Thu, 13 Jul 2017 16:40:36 GMT
ENV IRSSI_VERSION=1.0.4
# Thu, 13 Jul 2017 17:38:53 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 13 Jul 2017 17:38:53 GMT
WORKDIR /home/user
# Thu, 13 Jul 2017 17:38:54 GMT
USER [user]
# Thu, 13 Jul 2017 17:38:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7b413937b29e82eb7a372183bd69cdfd518796c6846d7094bb5577edb14bd`  
		Last Modified: Thu, 13 Jul 2017 17:40:04 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59364f7392290ddddd79638e6e1a778c3a8b686b44228e8f71068e84d7bec2`  
		Last Modified: Thu, 13 Jul 2017 17:40:03 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5fa4cd657712dbc621c363fb36623f47ab1d46b4a593182c00bf9adb1b874c`  
		Last Modified: Thu, 13 Jul 2017 17:40:09 GMT  
		Size: 16.8 MB (16798236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:2b05e55a4cf6ee88fcd853a52bd135cbc817e388b2ff073f6bd5133472cd81a8
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b3fff2b07c76882394d49289479096dffa356a9d827ed63785ec789b8ff8d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 13 Jul 2017 16:40:33 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 13 Jul 2017 16:40:34 GMT
ENV HOME=/home/user
# Thu, 13 Jul 2017 16:40:35 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 13 Jul 2017 16:40:35 GMT
ENV LANG=C.UTF-8
# Thu, 13 Jul 2017 16:40:36 GMT
ENV IRSSI_VERSION=1.0.4
# Thu, 13 Jul 2017 17:38:53 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 13 Jul 2017 17:38:53 GMT
WORKDIR /home/user
# Thu, 13 Jul 2017 17:38:54 GMT
USER [user]
# Thu, 13 Jul 2017 17:38:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7b413937b29e82eb7a372183bd69cdfd518796c6846d7094bb5577edb14bd`  
		Last Modified: Thu, 13 Jul 2017 17:40:04 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59364f7392290ddddd79638e6e1a778c3a8b686b44228e8f71068e84d7bec2`  
		Last Modified: Thu, 13 Jul 2017 17:40:03 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5fa4cd657712dbc621c363fb36623f47ab1d46b4a593182c00bf9adb1b874c`  
		Last Modified: Thu, 13 Jul 2017 17:40:09 GMT  
		Size: 16.8 MB (16798236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:2b05e55a4cf6ee88fcd853a52bd135cbc817e388b2ff073f6bd5133472cd81a8
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19141192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b3fff2b07c76882394d49289479096dffa356a9d827ed63785ec789b8ff8d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Thu, 13 Jul 2017 16:40:33 GMT
RUN apk --no-cache add 	ca-certificates
# Thu, 13 Jul 2017 16:40:34 GMT
ENV HOME=/home/user
# Thu, 13 Jul 2017 16:40:35 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 13 Jul 2017 16:40:35 GMT
ENV LANG=C.UTF-8
# Thu, 13 Jul 2017 16:40:36 GMT
ENV IRSSI_VERSION=1.0.4
# Thu, 13 Jul 2017 17:38:53 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 13 Jul 2017 17:38:53 GMT
WORKDIR /home/user
# Thu, 13 Jul 2017 17:38:54 GMT
USER [user]
# Thu, 13 Jul 2017 17:38:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b7b413937b29e82eb7a372183bd69cdfd518796c6846d7094bb5577edb14bd`  
		Last Modified: Thu, 13 Jul 2017 17:40:04 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc59364f7392290ddddd79638e6e1a778c3a8b686b44228e8f71068e84d7bec2`  
		Last Modified: Thu, 13 Jul 2017 17:40:03 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5fa4cd657712dbc621c363fb36623f47ab1d46b4a593182c00bf9adb1b874c`  
		Last Modified: Thu, 13 Jul 2017 17:40:09 GMT  
		Size: 16.8 MB (16798236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
