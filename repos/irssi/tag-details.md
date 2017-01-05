<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:0.8.20`](#irssi0820)
-	[`irssi:0.8`](#irssi08)
-	[`irssi:0`](#irssi0)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:0.8.20-alpine`](#irssi0820-alpine)
-	[`irssi:0.8-alpine`](#irssi08-alpine)
-	[`irssi:0-alpine`](#irssi0-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:0.8.20`

```console
$ docker pull irssi@sha256:3cb43218d5a406e05eec4bafbe974e20ef766ed2e19da7c289e2d457e4837456
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95703300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bc95ac436e0160949897f95c404ebaf5231ebf26854d46836d08e97c7f8687`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:50:29 GMT
ENV HOME=/home/user
# Tue, 13 Dec 2016 23:50:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 13 Dec 2016 23:50:31 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:50:31 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 13 Dec 2016 23:51:19 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:51:19 GMT
WORKDIR /home/user
# Tue, 13 Dec 2016 23:51:20 GMT
VOLUME [/home/user/.irssi]
# Tue, 13 Dec 2016 23:51:20 GMT
USER [user]
# Tue, 13 Dec 2016 23:51:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa21a6fe8bc3f18648d90b3a8b910ad9b21c14f415e17b94f7ada1cae617714`  
		Last Modified: Mon, 19 Dec 2016 23:01:10 GMT  
		Size: 32.3 MB (32262589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c200e6e37b7dd28e68f1dc5ee5e15daba3126e45ee613629b8b3bfc3aef654`  
		Last Modified: Mon, 19 Dec 2016 23:00:56 GMT  
		Size: 4.4 KB (4359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b5519e9e63cfbc5e5db2b61b4db8e72b9f6ec44a688885e5e9d05a62d0104b`  
		Last Modified: Mon, 19 Dec 2016 23:01:04 GMT  
		Size: 12.1 MB (12073227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8`

```console
$ docker pull irssi@sha256:3cb43218d5a406e05eec4bafbe974e20ef766ed2e19da7c289e2d457e4837456
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95703300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bc95ac436e0160949897f95c404ebaf5231ebf26854d46836d08e97c7f8687`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:50:29 GMT
ENV HOME=/home/user
# Tue, 13 Dec 2016 23:50:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 13 Dec 2016 23:50:31 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:50:31 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 13 Dec 2016 23:51:19 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:51:19 GMT
WORKDIR /home/user
# Tue, 13 Dec 2016 23:51:20 GMT
VOLUME [/home/user/.irssi]
# Tue, 13 Dec 2016 23:51:20 GMT
USER [user]
# Tue, 13 Dec 2016 23:51:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa21a6fe8bc3f18648d90b3a8b910ad9b21c14f415e17b94f7ada1cae617714`  
		Last Modified: Mon, 19 Dec 2016 23:01:10 GMT  
		Size: 32.3 MB (32262589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c200e6e37b7dd28e68f1dc5ee5e15daba3126e45ee613629b8b3bfc3aef654`  
		Last Modified: Mon, 19 Dec 2016 23:00:56 GMT  
		Size: 4.4 KB (4359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b5519e9e63cfbc5e5db2b61b4db8e72b9f6ec44a688885e5e9d05a62d0104b`  
		Last Modified: Mon, 19 Dec 2016 23:01:04 GMT  
		Size: 12.1 MB (12073227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0`

```console
$ docker pull irssi@sha256:3cb43218d5a406e05eec4bafbe974e20ef766ed2e19da7c289e2d457e4837456
```

-	Platforms:
	-	linux; amd64

### `irssi:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95703300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bc95ac436e0160949897f95c404ebaf5231ebf26854d46836d08e97c7f8687`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:50:29 GMT
ENV HOME=/home/user
# Tue, 13 Dec 2016 23:50:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 13 Dec 2016 23:50:31 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:50:31 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 13 Dec 2016 23:51:19 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:51:19 GMT
WORKDIR /home/user
# Tue, 13 Dec 2016 23:51:20 GMT
VOLUME [/home/user/.irssi]
# Tue, 13 Dec 2016 23:51:20 GMT
USER [user]
# Tue, 13 Dec 2016 23:51:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa21a6fe8bc3f18648d90b3a8b910ad9b21c14f415e17b94f7ada1cae617714`  
		Last Modified: Mon, 19 Dec 2016 23:01:10 GMT  
		Size: 32.3 MB (32262589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c200e6e37b7dd28e68f1dc5ee5e15daba3126e45ee613629b8b3bfc3aef654`  
		Last Modified: Mon, 19 Dec 2016 23:00:56 GMT  
		Size: 4.4 KB (4359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b5519e9e63cfbc5e5db2b61b4db8e72b9f6ec44a688885e5e9d05a62d0104b`  
		Last Modified: Mon, 19 Dec 2016 23:01:04 GMT  
		Size: 12.1 MB (12073227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:3cb43218d5a406e05eec4bafbe974e20ef766ed2e19da7c289e2d457e4837456
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95703300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bc95ac436e0160949897f95c404ebaf5231ebf26854d46836d08e97c7f8687`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:50:29 GMT
ENV HOME=/home/user
# Tue, 13 Dec 2016 23:50:30 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 13 Dec 2016 23:50:31 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:50:31 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 13 Dec 2016 23:51:19 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:51:19 GMT
WORKDIR /home/user
# Tue, 13 Dec 2016 23:51:20 GMT
VOLUME [/home/user/.irssi]
# Tue, 13 Dec 2016 23:51:20 GMT
USER [user]
# Tue, 13 Dec 2016 23:51:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa21a6fe8bc3f18648d90b3a8b910ad9b21c14f415e17b94f7ada1cae617714`  
		Last Modified: Mon, 19 Dec 2016 23:01:10 GMT  
		Size: 32.3 MB (32262589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c200e6e37b7dd28e68f1dc5ee5e15daba3126e45ee613629b8b3bfc3aef654`  
		Last Modified: Mon, 19 Dec 2016 23:00:56 GMT  
		Size: 4.4 KB (4359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b5519e9e63cfbc5e5db2b61b4db8e72b9f6ec44a688885e5e9d05a62d0104b`  
		Last Modified: Mon, 19 Dec 2016 23:01:04 GMT  
		Size: 12.1 MB (12073227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-alpine`

```console
$ docker pull irssi@sha256:cfcfb5864315ac10a980c1cb2c322c0b238792e903d1f2459d7a283df4b2bcfc
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21124204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3265914992bc043f752f04f2a287491f84a0f3d3e6dbebc6c397d30c0c08b4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:50 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 04 Jan 2017 21:10:50 GMT
ENV HOME=/home/user
# Wed, 04 Jan 2017 21:10:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 04 Jan 2017 21:10:52 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:10:52 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 04 Jan 2017 21:11:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:37 GMT
WORKDIR /home/user
# Wed, 04 Jan 2017 21:11:37 GMT
VOLUME [/home/user/.irssi]
# Wed, 04 Jan 2017 21:11:37 GMT
USER [user]
# Wed, 04 Jan 2017 21:11:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6826df98e19842d156879cc727d3d214c183dccb6135e6de3c220ce7f3f2b`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 352.7 KB (352742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d9c624e90f10200fb99ca627e6aa187da035f21072a0aa49a597777800ceb`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21380cc0d08e36d23c370e5455436c7a78b32921edb0a6a008227f1052bf4fcb`  
		Last Modified: Thu, 05 Jan 2017 00:06:21 GMT  
		Size: 18.9 MB (18868143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-alpine`

```console
$ docker pull irssi@sha256:cfcfb5864315ac10a980c1cb2c322c0b238792e903d1f2459d7a283df4b2bcfc
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21124204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3265914992bc043f752f04f2a287491f84a0f3d3e6dbebc6c397d30c0c08b4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:50 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 04 Jan 2017 21:10:50 GMT
ENV HOME=/home/user
# Wed, 04 Jan 2017 21:10:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 04 Jan 2017 21:10:52 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:10:52 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 04 Jan 2017 21:11:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:37 GMT
WORKDIR /home/user
# Wed, 04 Jan 2017 21:11:37 GMT
VOLUME [/home/user/.irssi]
# Wed, 04 Jan 2017 21:11:37 GMT
USER [user]
# Wed, 04 Jan 2017 21:11:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6826df98e19842d156879cc727d3d214c183dccb6135e6de3c220ce7f3f2b`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 352.7 KB (352742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d9c624e90f10200fb99ca627e6aa187da035f21072a0aa49a597777800ceb`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21380cc0d08e36d23c370e5455436c7a78b32921edb0a6a008227f1052bf4fcb`  
		Last Modified: Thu, 05 Jan 2017 00:06:21 GMT  
		Size: 18.9 MB (18868143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:cfcfb5864315ac10a980c1cb2c322c0b238792e903d1f2459d7a283df4b2bcfc
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21124204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3265914992bc043f752f04f2a287491f84a0f3d3e6dbebc6c397d30c0c08b4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:50 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 04 Jan 2017 21:10:50 GMT
ENV HOME=/home/user
# Wed, 04 Jan 2017 21:10:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 04 Jan 2017 21:10:52 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:10:52 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 04 Jan 2017 21:11:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:37 GMT
WORKDIR /home/user
# Wed, 04 Jan 2017 21:11:37 GMT
VOLUME [/home/user/.irssi]
# Wed, 04 Jan 2017 21:11:37 GMT
USER [user]
# Wed, 04 Jan 2017 21:11:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6826df98e19842d156879cc727d3d214c183dccb6135e6de3c220ce7f3f2b`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 352.7 KB (352742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d9c624e90f10200fb99ca627e6aa187da035f21072a0aa49a597777800ceb`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21380cc0d08e36d23c370e5455436c7a78b32921edb0a6a008227f1052bf4fcb`  
		Last Modified: Thu, 05 Jan 2017 00:06:21 GMT  
		Size: 18.9 MB (18868143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:cfcfb5864315ac10a980c1cb2c322c0b238792e903d1f2459d7a283df4b2bcfc
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21124204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3265914992bc043f752f04f2a287491f84a0f3d3e6dbebc6c397d30c0c08b4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:50 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 04 Jan 2017 21:10:50 GMT
ENV HOME=/home/user
# Wed, 04 Jan 2017 21:10:51 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 04 Jan 2017 21:10:52 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:10:52 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 04 Jan 2017 21:11:36 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:11:37 GMT
WORKDIR /home/user
# Wed, 04 Jan 2017 21:11:37 GMT
VOLUME [/home/user/.irssi]
# Wed, 04 Jan 2017 21:11:37 GMT
USER [user]
# Wed, 04 Jan 2017 21:11:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece6826df98e19842d156879cc727d3d214c183dccb6135e6de3c220ce7f3f2b`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 352.7 KB (352742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d9c624e90f10200fb99ca627e6aa187da035f21072a0aa49a597777800ceb`  
		Last Modified: Thu, 05 Jan 2017 00:06:10 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21380cc0d08e36d23c370e5455436c7a78b32921edb0a6a008227f1052bf4fcb`  
		Last Modified: Thu, 05 Jan 2017 00:06:21 GMT  
		Size: 18.9 MB (18868143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
