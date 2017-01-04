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
$ docker pull irssi@sha256:e2e034de1557152ade040517f0fd1d5565f33ade9d08d4e4da222b0e8cbefd3b
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ef826d1257cf05dea26f63ff5109a005efdaeed880c423ad60aff239cdd640`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 19:14:58 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Dec 2016 19:15:09 GMT
ENV HOME=/home/user
# Tue, 27 Dec 2016 19:15:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Dec 2016 19:15:10 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 19:15:11 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 27 Dec 2016 19:16:00 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:16:04 GMT
WORKDIR /home/user
# Tue, 27 Dec 2016 19:16:04 GMT
VOLUME [/home/user/.irssi]
# Tue, 27 Dec 2016 19:16:04 GMT
USER [user]
# Tue, 27 Dec 2016 19:16:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48307fa8e3127da99a0dad540ee1d6e4c080e1c4cafe38c3cf8ffc026bcee76b`  
		Last Modified: Tue, 27 Dec 2016 19:18:47 GMT  
		Size: 567.1 KB (567075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f483edc6a6821f96fa67da94943b8404b0019b9d76cf97b4481b10ec75fa68`  
		Last Modified: Tue, 27 Dec 2016 19:18:46 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8b8852a7ba53f3473e678d62501c75a277d4a1b086e5198c0935410c95422`  
		Last Modified: Tue, 27 Dec 2016 19:18:53 GMT  
		Size: 16.6 MB (16601144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-alpine`

```console
$ docker pull irssi@sha256:e2e034de1557152ade040517f0fd1d5565f33ade9d08d4e4da222b0e8cbefd3b
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ef826d1257cf05dea26f63ff5109a005efdaeed880c423ad60aff239cdd640`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 19:14:58 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Dec 2016 19:15:09 GMT
ENV HOME=/home/user
# Tue, 27 Dec 2016 19:15:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Dec 2016 19:15:10 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 19:15:11 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 27 Dec 2016 19:16:00 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:16:04 GMT
WORKDIR /home/user
# Tue, 27 Dec 2016 19:16:04 GMT
VOLUME [/home/user/.irssi]
# Tue, 27 Dec 2016 19:16:04 GMT
USER [user]
# Tue, 27 Dec 2016 19:16:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48307fa8e3127da99a0dad540ee1d6e4c080e1c4cafe38c3cf8ffc026bcee76b`  
		Last Modified: Tue, 27 Dec 2016 19:18:47 GMT  
		Size: 567.1 KB (567075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f483edc6a6821f96fa67da94943b8404b0019b9d76cf97b4481b10ec75fa68`  
		Last Modified: Tue, 27 Dec 2016 19:18:46 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8b8852a7ba53f3473e678d62501c75a277d4a1b086e5198c0935410c95422`  
		Last Modified: Tue, 27 Dec 2016 19:18:53 GMT  
		Size: 16.6 MB (16601144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:e2e034de1557152ade040517f0fd1d5565f33ade9d08d4e4da222b0e8cbefd3b
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ef826d1257cf05dea26f63ff5109a005efdaeed880c423ad60aff239cdd640`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 19:14:58 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Dec 2016 19:15:09 GMT
ENV HOME=/home/user
# Tue, 27 Dec 2016 19:15:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Dec 2016 19:15:10 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 19:15:11 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 27 Dec 2016 19:16:00 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:16:04 GMT
WORKDIR /home/user
# Tue, 27 Dec 2016 19:16:04 GMT
VOLUME [/home/user/.irssi]
# Tue, 27 Dec 2016 19:16:04 GMT
USER [user]
# Tue, 27 Dec 2016 19:16:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48307fa8e3127da99a0dad540ee1d6e4c080e1c4cafe38c3cf8ffc026bcee76b`  
		Last Modified: Tue, 27 Dec 2016 19:18:47 GMT  
		Size: 567.1 KB (567075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f483edc6a6821f96fa67da94943b8404b0019b9d76cf97b4481b10ec75fa68`  
		Last Modified: Tue, 27 Dec 2016 19:18:46 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8b8852a7ba53f3473e678d62501c75a277d4a1b086e5198c0935410c95422`  
		Last Modified: Tue, 27 Dec 2016 19:18:53 GMT  
		Size: 16.6 MB (16601144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:e2e034de1557152ade040517f0fd1d5565f33ade9d08d4e4da222b0e8cbefd3b
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ef826d1257cf05dea26f63ff5109a005efdaeed880c423ad60aff239cdd640`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 19:14:58 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Dec 2016 19:15:09 GMT
ENV HOME=/home/user
# Tue, 27 Dec 2016 19:15:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Dec 2016 19:15:10 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 19:15:11 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 27 Dec 2016 19:16:00 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:16:04 GMT
WORKDIR /home/user
# Tue, 27 Dec 2016 19:16:04 GMT
VOLUME [/home/user/.irssi]
# Tue, 27 Dec 2016 19:16:04 GMT
USER [user]
# Tue, 27 Dec 2016 19:16:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48307fa8e3127da99a0dad540ee1d6e4c080e1c4cafe38c3cf8ffc026bcee76b`  
		Last Modified: Tue, 27 Dec 2016 19:18:47 GMT  
		Size: 567.1 KB (567075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f483edc6a6821f96fa67da94943b8404b0019b9d76cf97b4481b10ec75fa68`  
		Last Modified: Tue, 27 Dec 2016 19:18:46 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8b8852a7ba53f3473e678d62501c75a277d4a1b086e5198c0935410c95422`  
		Last Modified: Tue, 27 Dec 2016 19:18:53 GMT  
		Size: 16.6 MB (16601144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
