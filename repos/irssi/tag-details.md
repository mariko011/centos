<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1.0.2`](#irssi102)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1`](#irssi1)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:1.0.2-alpine`](#irssi102-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:1.0.2`

```console
$ docker pull irssi@sha256:6a706e06b9f61c03951ba137d88291935ee69b5b4848f4875ceb22d5e672b7f2
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97856585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facc4555e7d9fdd8b4fbb8ee79878513a41caada1a1ea19e7486a07bda0811f1`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:17:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:17:51 GMT
ENV HOME=/home/user
# Tue, 09 May 2017 17:17:53 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 09 May 2017 17:17:54 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:17:54 GMT
ENV IRSSI_VERSION=1.0.2
# Tue, 09 May 2017 17:18:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 May 2017 17:18:54 GMT
WORKDIR /home/user
# Tue, 09 May 2017 17:18:55 GMT
USER [user]
# Tue, 09 May 2017 17:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd13f6831e7b104ddbad8e0b97d5195b54385a8bb05e663d5591b82395757b0`  
		Last Modified: Sat, 13 May 2017 06:39:47 GMT  
		Size: 33.0 MB (33036355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59faa312fa8ffeeec551d373541878ee0744b9f1a338f0ef4525918e0d6640d2`  
		Last Modified: Sat, 13 May 2017 06:39:36 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068346fd8bee0d54c9f8b104236acb75631b45873a9b9443ef3c9a3cf8f2458c`  
		Last Modified: Sat, 13 May 2017 06:39:43 GMT  
		Size: 12.2 MB (12231818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:6a706e06b9f61c03951ba137d88291935ee69b5b4848f4875ceb22d5e672b7f2
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97856585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facc4555e7d9fdd8b4fbb8ee79878513a41caada1a1ea19e7486a07bda0811f1`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:17:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:17:51 GMT
ENV HOME=/home/user
# Tue, 09 May 2017 17:17:53 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 09 May 2017 17:17:54 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:17:54 GMT
ENV IRSSI_VERSION=1.0.2
# Tue, 09 May 2017 17:18:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 May 2017 17:18:54 GMT
WORKDIR /home/user
# Tue, 09 May 2017 17:18:55 GMT
USER [user]
# Tue, 09 May 2017 17:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd13f6831e7b104ddbad8e0b97d5195b54385a8bb05e663d5591b82395757b0`  
		Last Modified: Sat, 13 May 2017 06:39:47 GMT  
		Size: 33.0 MB (33036355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59faa312fa8ffeeec551d373541878ee0744b9f1a338f0ef4525918e0d6640d2`  
		Last Modified: Sat, 13 May 2017 06:39:36 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068346fd8bee0d54c9f8b104236acb75631b45873a9b9443ef3c9a3cf8f2458c`  
		Last Modified: Sat, 13 May 2017 06:39:43 GMT  
		Size: 12.2 MB (12231818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:6a706e06b9f61c03951ba137d88291935ee69b5b4848f4875ceb22d5e672b7f2
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97856585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facc4555e7d9fdd8b4fbb8ee79878513a41caada1a1ea19e7486a07bda0811f1`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:17:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:17:51 GMT
ENV HOME=/home/user
# Tue, 09 May 2017 17:17:53 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 09 May 2017 17:17:54 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:17:54 GMT
ENV IRSSI_VERSION=1.0.2
# Tue, 09 May 2017 17:18:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 May 2017 17:18:54 GMT
WORKDIR /home/user
# Tue, 09 May 2017 17:18:55 GMT
USER [user]
# Tue, 09 May 2017 17:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd13f6831e7b104ddbad8e0b97d5195b54385a8bb05e663d5591b82395757b0`  
		Last Modified: Sat, 13 May 2017 06:39:47 GMT  
		Size: 33.0 MB (33036355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59faa312fa8ffeeec551d373541878ee0744b9f1a338f0ef4525918e0d6640d2`  
		Last Modified: Sat, 13 May 2017 06:39:36 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068346fd8bee0d54c9f8b104236acb75631b45873a9b9443ef3c9a3cf8f2458c`  
		Last Modified: Sat, 13 May 2017 06:39:43 GMT  
		Size: 12.2 MB (12231818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:6a706e06b9f61c03951ba137d88291935ee69b5b4848f4875ceb22d5e672b7f2
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97856585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facc4555e7d9fdd8b4fbb8ee79878513a41caada1a1ea19e7486a07bda0811f1`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:17:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:17:51 GMT
ENV HOME=/home/user
# Tue, 09 May 2017 17:17:53 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 09 May 2017 17:17:54 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:17:54 GMT
ENV IRSSI_VERSION=1.0.2
# Tue, 09 May 2017 17:18:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 May 2017 17:18:54 GMT
WORKDIR /home/user
# Tue, 09 May 2017 17:18:55 GMT
USER [user]
# Tue, 09 May 2017 17:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd13f6831e7b104ddbad8e0b97d5195b54385a8bb05e663d5591b82395757b0`  
		Last Modified: Sat, 13 May 2017 06:39:47 GMT  
		Size: 33.0 MB (33036355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59faa312fa8ffeeec551d373541878ee0744b9f1a338f0ef4525918e0d6640d2`  
		Last Modified: Sat, 13 May 2017 06:39:36 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068346fd8bee0d54c9f8b104236acb75631b45873a9b9443ef3c9a3cf8f2458c`  
		Last Modified: Sat, 13 May 2017 06:39:43 GMT  
		Size: 12.2 MB (12231818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.2-alpine`

```console
$ docker pull irssi@sha256:c622e2edeee8919124405806d7dd398825f5ef0ddc09f6ba094bd83680575a38
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21443292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a928e996fc424016a7dea6bdb77785d0f211d16fd5a12539a9afff9d5f6e39c`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:44:38 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 10 May 2017 21:44:39 GMT
ENV HOME=/home/user
# Wed, 10 May 2017 21:44:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 10 May 2017 21:44:41 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:44:42 GMT
ENV IRSSI_VERSION=1.0.2
# Wed, 10 May 2017 21:45:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 10 May 2017 21:45:21 GMT
WORKDIR /home/user
# Wed, 10 May 2017 21:45:22 GMT
USER [user]
# Wed, 10 May 2017 21:45:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2445bee90a70665cdab21d33fe724916dac30e23d09177a8c83455688dc7b128`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84fde9e3fd530bf08e74700ae62174b29e45720ceb9dee8c2a0cf3e6a174b37`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9504595dbf1be20949f7367ce27f2ea3b09232c3f66fd7a0feb994f2da94e33`  
		Last Modified: Sat, 13 May 2017 06:41:26 GMT  
		Size: 19.1 MB (19123500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:c622e2edeee8919124405806d7dd398825f5ef0ddc09f6ba094bd83680575a38
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21443292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a928e996fc424016a7dea6bdb77785d0f211d16fd5a12539a9afff9d5f6e39c`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:44:38 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 10 May 2017 21:44:39 GMT
ENV HOME=/home/user
# Wed, 10 May 2017 21:44:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 10 May 2017 21:44:41 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:44:42 GMT
ENV IRSSI_VERSION=1.0.2
# Wed, 10 May 2017 21:45:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 10 May 2017 21:45:21 GMT
WORKDIR /home/user
# Wed, 10 May 2017 21:45:22 GMT
USER [user]
# Wed, 10 May 2017 21:45:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2445bee90a70665cdab21d33fe724916dac30e23d09177a8c83455688dc7b128`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84fde9e3fd530bf08e74700ae62174b29e45720ceb9dee8c2a0cf3e6a174b37`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9504595dbf1be20949f7367ce27f2ea3b09232c3f66fd7a0feb994f2da94e33`  
		Last Modified: Sat, 13 May 2017 06:41:26 GMT  
		Size: 19.1 MB (19123500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:c622e2edeee8919124405806d7dd398825f5ef0ddc09f6ba094bd83680575a38
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21443292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a928e996fc424016a7dea6bdb77785d0f211d16fd5a12539a9afff9d5f6e39c`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:44:38 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 10 May 2017 21:44:39 GMT
ENV HOME=/home/user
# Wed, 10 May 2017 21:44:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 10 May 2017 21:44:41 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:44:42 GMT
ENV IRSSI_VERSION=1.0.2
# Wed, 10 May 2017 21:45:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 10 May 2017 21:45:21 GMT
WORKDIR /home/user
# Wed, 10 May 2017 21:45:22 GMT
USER [user]
# Wed, 10 May 2017 21:45:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2445bee90a70665cdab21d33fe724916dac30e23d09177a8c83455688dc7b128`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84fde9e3fd530bf08e74700ae62174b29e45720ceb9dee8c2a0cf3e6a174b37`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9504595dbf1be20949f7367ce27f2ea3b09232c3f66fd7a0feb994f2da94e33`  
		Last Modified: Sat, 13 May 2017 06:41:26 GMT  
		Size: 19.1 MB (19123500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:c622e2edeee8919124405806d7dd398825f5ef0ddc09f6ba094bd83680575a38
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21443292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a928e996fc424016a7dea6bdb77785d0f211d16fd5a12539a9afff9d5f6e39c`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:44:38 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 10 May 2017 21:44:39 GMT
ENV HOME=/home/user
# Wed, 10 May 2017 21:44:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 10 May 2017 21:44:41 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:44:42 GMT
ENV IRSSI_VERSION=1.0.2
# Wed, 10 May 2017 21:45:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 10 May 2017 21:45:21 GMT
WORKDIR /home/user
# Wed, 10 May 2017 21:45:22 GMT
USER [user]
# Wed, 10 May 2017 21:45:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2445bee90a70665cdab21d33fe724916dac30e23d09177a8c83455688dc7b128`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84fde9e3fd530bf08e74700ae62174b29e45720ceb9dee8c2a0cf3e6a174b37`  
		Last Modified: Sat, 13 May 2017 06:41:19 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9504595dbf1be20949f7367ce27f2ea3b09232c3f66fd7a0feb994f2da94e33`  
		Last Modified: Sat, 13 May 2017 06:41:26 GMT  
		Size: 19.1 MB (19123500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
