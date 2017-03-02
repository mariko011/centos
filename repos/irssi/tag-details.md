<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1.0.1`](#irssi101)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1`](#irssi1)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:1.0.1-alpine`](#irssi101-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:1.0.1`

```console
$ docker pull irssi@sha256:4ac7ddd84871d0c70dac03feb31dc2efa2fe95e96ec386b2ef067ff55482731e
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95765536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b50ac62906c2a36df0d3d274b27a2022e21ad8f3aeaea2649df3836d0501a68`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:38:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:38:44 GMT
ENV HOME=/home/user
# Tue, 28 Feb 2017 03:38:45 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 28 Feb 2017 03:38:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:38:46 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 28 Feb 2017 03:39:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:39:39 GMT
WORKDIR /home/user
# Tue, 28 Feb 2017 03:39:40 GMT
USER [user]
# Tue, 28 Feb 2017 03:39:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e90e769946e6f86f5ae4657c26fcb71f0c4467564d8e5f950f5a50a7622e18c`  
		Last Modified: Thu, 02 Mar 2017 01:08:13 GMT  
		Size: 32.3 MB (32254014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab986349391d0eb566f832e01795cea9c2824566195b2bb0589191208c38c6f`  
		Last Modified: Thu, 02 Mar 2017 01:08:02 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104bfc1f832094864989cc036d552fcbc223b6abacd4921273479ecdb9f31e3e`  
		Last Modified: Thu, 02 Mar 2017 01:08:09 GMT  
		Size: 12.1 MB (12143787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:4ac7ddd84871d0c70dac03feb31dc2efa2fe95e96ec386b2ef067ff55482731e
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95765536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b50ac62906c2a36df0d3d274b27a2022e21ad8f3aeaea2649df3836d0501a68`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:38:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:38:44 GMT
ENV HOME=/home/user
# Tue, 28 Feb 2017 03:38:45 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 28 Feb 2017 03:38:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:38:46 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 28 Feb 2017 03:39:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:39:39 GMT
WORKDIR /home/user
# Tue, 28 Feb 2017 03:39:40 GMT
USER [user]
# Tue, 28 Feb 2017 03:39:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e90e769946e6f86f5ae4657c26fcb71f0c4467564d8e5f950f5a50a7622e18c`  
		Last Modified: Thu, 02 Mar 2017 01:08:13 GMT  
		Size: 32.3 MB (32254014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab986349391d0eb566f832e01795cea9c2824566195b2bb0589191208c38c6f`  
		Last Modified: Thu, 02 Mar 2017 01:08:02 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104bfc1f832094864989cc036d552fcbc223b6abacd4921273479ecdb9f31e3e`  
		Last Modified: Thu, 02 Mar 2017 01:08:09 GMT  
		Size: 12.1 MB (12143787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:4ac7ddd84871d0c70dac03feb31dc2efa2fe95e96ec386b2ef067ff55482731e
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95765536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b50ac62906c2a36df0d3d274b27a2022e21ad8f3aeaea2649df3836d0501a68`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:38:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:38:44 GMT
ENV HOME=/home/user
# Tue, 28 Feb 2017 03:38:45 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 28 Feb 2017 03:38:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:38:46 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 28 Feb 2017 03:39:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:39:39 GMT
WORKDIR /home/user
# Tue, 28 Feb 2017 03:39:40 GMT
USER [user]
# Tue, 28 Feb 2017 03:39:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e90e769946e6f86f5ae4657c26fcb71f0c4467564d8e5f950f5a50a7622e18c`  
		Last Modified: Thu, 02 Mar 2017 01:08:13 GMT  
		Size: 32.3 MB (32254014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab986349391d0eb566f832e01795cea9c2824566195b2bb0589191208c38c6f`  
		Last Modified: Thu, 02 Mar 2017 01:08:02 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104bfc1f832094864989cc036d552fcbc223b6abacd4921273479ecdb9f31e3e`  
		Last Modified: Thu, 02 Mar 2017 01:08:09 GMT  
		Size: 12.1 MB (12143787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:4ac7ddd84871d0c70dac03feb31dc2efa2fe95e96ec386b2ef067ff55482731e
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95765536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b50ac62906c2a36df0d3d274b27a2022e21ad8f3aeaea2649df3836d0501a68`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:38:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:38:44 GMT
ENV HOME=/home/user
# Tue, 28 Feb 2017 03:38:45 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 28 Feb 2017 03:38:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:38:46 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 28 Feb 2017 03:39:39 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 28 Feb 2017 03:39:39 GMT
WORKDIR /home/user
# Tue, 28 Feb 2017 03:39:40 GMT
USER [user]
# Tue, 28 Feb 2017 03:39:40 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e90e769946e6f86f5ae4657c26fcb71f0c4467564d8e5f950f5a50a7622e18c`  
		Last Modified: Thu, 02 Mar 2017 01:08:13 GMT  
		Size: 32.3 MB (32254014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab986349391d0eb566f832e01795cea9c2824566195b2bb0589191208c38c6f`  
		Last Modified: Thu, 02 Mar 2017 01:08:02 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104bfc1f832094864989cc036d552fcbc223b6abacd4921273479ecdb9f31e3e`  
		Last Modified: Thu, 02 Mar 2017 01:08:09 GMT  
		Size: 12.1 MB (12143787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.1-alpine`

```console
$ docker pull irssi@sha256:50305bbdab36e75082b6dbe83185427f753a6228815bc5ba920991b81bd8106d
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.6 MB (21566191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d543ceefd683184ef8567331de01417f55172753e7df2ad5fe2e34184723a4fb`
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
# Tue, 07 Feb 2017 19:56:56 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 07 Feb 2017 19:57:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 07 Feb 2017 19:57:41 GMT
WORKDIR /home/user
# Fri, 10 Feb 2017 00:25:35 GMT
USER [user]
# Fri, 10 Feb 2017 00:25:36 GMT
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
	-	`sha256:945fceb2dee890de4d5177d4d929b56fc9bab47eb2cdbbc55ae1e7c6c409b7cd`  
		Last Modified: Tue, 07 Feb 2017 19:59:14 GMT  
		Size: 19.3 MB (19310130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:50305bbdab36e75082b6dbe83185427f753a6228815bc5ba920991b81bd8106d
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.6 MB (21566191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d543ceefd683184ef8567331de01417f55172753e7df2ad5fe2e34184723a4fb`
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
# Tue, 07 Feb 2017 19:56:56 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 07 Feb 2017 19:57:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 07 Feb 2017 19:57:41 GMT
WORKDIR /home/user
# Fri, 10 Feb 2017 00:25:35 GMT
USER [user]
# Fri, 10 Feb 2017 00:25:36 GMT
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
	-	`sha256:945fceb2dee890de4d5177d4d929b56fc9bab47eb2cdbbc55ae1e7c6c409b7cd`  
		Last Modified: Tue, 07 Feb 2017 19:59:14 GMT  
		Size: 19.3 MB (19310130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:50305bbdab36e75082b6dbe83185427f753a6228815bc5ba920991b81bd8106d
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.6 MB (21566191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d543ceefd683184ef8567331de01417f55172753e7df2ad5fe2e34184723a4fb`
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
# Tue, 07 Feb 2017 19:56:56 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 07 Feb 2017 19:57:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 07 Feb 2017 19:57:41 GMT
WORKDIR /home/user
# Fri, 10 Feb 2017 00:25:35 GMT
USER [user]
# Fri, 10 Feb 2017 00:25:36 GMT
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
	-	`sha256:945fceb2dee890de4d5177d4d929b56fc9bab47eb2cdbbc55ae1e7c6c409b7cd`  
		Last Modified: Tue, 07 Feb 2017 19:59:14 GMT  
		Size: 19.3 MB (19310130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:50305bbdab36e75082b6dbe83185427f753a6228815bc5ba920991b81bd8106d
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.6 MB (21566191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d543ceefd683184ef8567331de01417f55172753e7df2ad5fe2e34184723a4fb`
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
# Tue, 07 Feb 2017 19:56:56 GMT
ENV IRSSI_VERSION=1.0.1
# Tue, 07 Feb 2017 19:57:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 07 Feb 2017 19:57:41 GMT
WORKDIR /home/user
# Fri, 10 Feb 2017 00:25:35 GMT
USER [user]
# Fri, 10 Feb 2017 00:25:36 GMT
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
	-	`sha256:945fceb2dee890de4d5177d4d929b56fc9bab47eb2cdbbc55ae1e7c6c409b7cd`  
		Last Modified: Tue, 07 Feb 2017 19:59:14 GMT  
		Size: 19.3 MB (19310130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
