<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1.0.0`](#irssi100)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1`](#irssi1)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:1.0.0-alpine`](#irssi100-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:1.0.0`

```console
$ docker pull irssi@sha256:f075cfa8e40bbd92e95da2d9115c66a7c92b09d15e1143feceb180b4f76e9640
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95760897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35df4a4172bd1c52e25acb0db3b2373c2b160993af9e409ba4638e5d3e85f31f`
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
# Fri, 06 Jan 2017 00:00:10 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:01:23 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 00:01:27 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:01:28 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:01:28 GMT
USER [user]
# Fri, 06 Jan 2017 00:01:29 GMT
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
	-	`sha256:3bec3b6a902533abdd5957232c80b71f6bfb73a73ad449f7f62cc5513a9a3505`  
		Last Modified: Fri, 06 Jan 2017 00:03:15 GMT  
		Size: 12.1 MB (12130824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:f075cfa8e40bbd92e95da2d9115c66a7c92b09d15e1143feceb180b4f76e9640
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95760897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35df4a4172bd1c52e25acb0db3b2373c2b160993af9e409ba4638e5d3e85f31f`
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
# Fri, 06 Jan 2017 00:00:10 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:01:23 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 00:01:27 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:01:28 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:01:28 GMT
USER [user]
# Fri, 06 Jan 2017 00:01:29 GMT
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
	-	`sha256:3bec3b6a902533abdd5957232c80b71f6bfb73a73ad449f7f62cc5513a9a3505`  
		Last Modified: Fri, 06 Jan 2017 00:03:15 GMT  
		Size: 12.1 MB (12130824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:f075cfa8e40bbd92e95da2d9115c66a7c92b09d15e1143feceb180b4f76e9640
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95760897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35df4a4172bd1c52e25acb0db3b2373c2b160993af9e409ba4638e5d3e85f31f`
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
# Fri, 06 Jan 2017 00:00:10 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:01:23 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 00:01:27 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:01:28 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:01:28 GMT
USER [user]
# Fri, 06 Jan 2017 00:01:29 GMT
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
	-	`sha256:3bec3b6a902533abdd5957232c80b71f6bfb73a73ad449f7f62cc5513a9a3505`  
		Last Modified: Fri, 06 Jan 2017 00:03:15 GMT  
		Size: 12.1 MB (12130824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:f075cfa8e40bbd92e95da2d9115c66a7c92b09d15e1143feceb180b4f76e9640
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95760897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35df4a4172bd1c52e25acb0db3b2373c2b160993af9e409ba4638e5d3e85f31f`
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
# Fri, 06 Jan 2017 00:00:10 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:01:23 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 06 Jan 2017 00:01:27 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:01:28 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:01:28 GMT
USER [user]
# Fri, 06 Jan 2017 00:01:29 GMT
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
	-	`sha256:3bec3b6a902533abdd5957232c80b71f6bfb73a73ad449f7f62cc5513a9a3505`  
		Last Modified: Fri, 06 Jan 2017 00:03:15 GMT  
		Size: 12.1 MB (12130824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.0-alpine`

```console
$ docker pull irssi@sha256:e2dd06e137a935fb0371e1ef040e3dc692ffa348b1a489b842ca27db619dda83
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21182002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84db9b0aa58015f1cb6d4de8821c5255ed83216b350be4d10eaa4e895ed3045`
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
# Fri, 06 Jan 2017 00:01:41 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:02:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 06 Jan 2017 00:02:42 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:02:43 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:02:43 GMT
USER [user]
# Fri, 06 Jan 2017 00:02:44 GMT
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
	-	`sha256:ee963600d0cdeebc3f59df69320b4f91327efb3eba46f6e2f6fdfdf72830bda3`  
		Last Modified: Fri, 06 Jan 2017 00:04:51 GMT  
		Size: 18.9 MB (18925941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:e2dd06e137a935fb0371e1ef040e3dc692ffa348b1a489b842ca27db619dda83
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21182002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84db9b0aa58015f1cb6d4de8821c5255ed83216b350be4d10eaa4e895ed3045`
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
# Fri, 06 Jan 2017 00:01:41 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:02:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 06 Jan 2017 00:02:42 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:02:43 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:02:43 GMT
USER [user]
# Fri, 06 Jan 2017 00:02:44 GMT
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
	-	`sha256:ee963600d0cdeebc3f59df69320b4f91327efb3eba46f6e2f6fdfdf72830bda3`  
		Last Modified: Fri, 06 Jan 2017 00:04:51 GMT  
		Size: 18.9 MB (18925941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:e2dd06e137a935fb0371e1ef040e3dc692ffa348b1a489b842ca27db619dda83
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21182002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84db9b0aa58015f1cb6d4de8821c5255ed83216b350be4d10eaa4e895ed3045`
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
# Fri, 06 Jan 2017 00:01:41 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:02:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 06 Jan 2017 00:02:42 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:02:43 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:02:43 GMT
USER [user]
# Fri, 06 Jan 2017 00:02:44 GMT
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
	-	`sha256:ee963600d0cdeebc3f59df69320b4f91327efb3eba46f6e2f6fdfdf72830bda3`  
		Last Modified: Fri, 06 Jan 2017 00:04:51 GMT  
		Size: 18.9 MB (18925941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:e2dd06e137a935fb0371e1ef040e3dc692ffa348b1a489b842ca27db619dda83
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21182002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84db9b0aa58015f1cb6d4de8821c5255ed83216b350be4d10eaa4e895ed3045`
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
# Fri, 06 Jan 2017 00:01:41 GMT
ENV IRSSI_VERSION=1.0.0
# Fri, 06 Jan 2017 00:02:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 06 Jan 2017 00:02:42 GMT
WORKDIR /home/user
# Fri, 06 Jan 2017 00:02:43 GMT
VOLUME [/home/user/.irssi]
# Fri, 06 Jan 2017 00:02:43 GMT
USER [user]
# Fri, 06 Jan 2017 00:02:44 GMT
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
	-	`sha256:ee963600d0cdeebc3f59df69320b4f91327efb3eba46f6e2f6fdfdf72830bda3`  
		Last Modified: Fri, 06 Jan 2017 00:04:51 GMT  
		Size: 18.9 MB (18925941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
