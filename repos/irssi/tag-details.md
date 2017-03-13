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
$ docker pull irssi@sha256:10785528439dc0a43ebb9db5ac34162871ef4c069c9e60c3f2ddf485c37b5952
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95766312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ee2245a331c3688be386eebd157b505780292316d4cac10caa2004f3cbc3f6`
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
# Mon, 13 Mar 2017 18:25:13 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Mar 2017 18:26:06 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:07 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:07 GMT
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
	-	`sha256:0ac161169fd4b20316d026fed0a272169d8346e2976c98c88d2b7346b9e53052`  
		Last Modified: Mon, 13 Mar 2017 18:27:18 GMT  
		Size: 12.1 MB (12144563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:10785528439dc0a43ebb9db5ac34162871ef4c069c9e60c3f2ddf485c37b5952
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95766312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ee2245a331c3688be386eebd157b505780292316d4cac10caa2004f3cbc3f6`
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
# Mon, 13 Mar 2017 18:25:13 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Mar 2017 18:26:06 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:07 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:07 GMT
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
	-	`sha256:0ac161169fd4b20316d026fed0a272169d8346e2976c98c88d2b7346b9e53052`  
		Last Modified: Mon, 13 Mar 2017 18:27:18 GMT  
		Size: 12.1 MB (12144563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:10785528439dc0a43ebb9db5ac34162871ef4c069c9e60c3f2ddf485c37b5952
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95766312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ee2245a331c3688be386eebd157b505780292316d4cac10caa2004f3cbc3f6`
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
# Mon, 13 Mar 2017 18:25:13 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Mar 2017 18:26:06 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:07 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:07 GMT
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
	-	`sha256:0ac161169fd4b20316d026fed0a272169d8346e2976c98c88d2b7346b9e53052`  
		Last Modified: Mon, 13 Mar 2017 18:27:18 GMT  
		Size: 12.1 MB (12144563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:10785528439dc0a43ebb9db5ac34162871ef4c069c9e60c3f2ddf485c37b5952
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95766312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ee2245a331c3688be386eebd157b505780292316d4cac10caa2004f3cbc3f6`
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
# Mon, 13 Mar 2017 18:25:13 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Mar 2017 18:26:06 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:07 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:07 GMT
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
	-	`sha256:0ac161169fd4b20316d026fed0a272169d8346e2976c98c88d2b7346b9e53052`  
		Last Modified: Mon, 13 Mar 2017 18:27:18 GMT  
		Size: 12.1 MB (12144563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.2-alpine`

```console
$ docker pull irssi@sha256:6d948bb88807ae0c0463319721ecc6f1f52be9ea428a1fa9f1883781a26d384d
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21186147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc625da08707c55ce818b9df9d0cc507014fb77905adafd29a7bab10d3bc2329`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:00:11 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 03 Mar 2017 22:00:11 GMT
ENV HOME=/home/user
# Fri, 03 Mar 2017 22:00:12 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 03 Mar 2017 22:00:12 GMT
ENV LANG=C.UTF-8
# Mon, 13 Mar 2017 18:26:09 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:52 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 13 Mar 2017 18:26:52 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:53 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395db7b6173c1b6b5042a18d2a634110eece90896af566af8b8e46d307485d2`  
		Last Modified: Sat, 04 Mar 2017 05:09:11 GMT  
		Size: 352.8 KB (352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779046b90289050919f47aa121a711eafb513443e34d69a18dbc4b9cfe6cb8b`  
		Last Modified: Sat, 04 Mar 2017 05:09:09 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237afc3b03dfa69d1cdd33331090a0fb6ab45148b6f4fb8eb3a3ee82c6f85938`  
		Last Modified: Mon, 13 Mar 2017 18:28:58 GMT  
		Size: 18.9 MB (18926872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:6d948bb88807ae0c0463319721ecc6f1f52be9ea428a1fa9f1883781a26d384d
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21186147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc625da08707c55ce818b9df9d0cc507014fb77905adafd29a7bab10d3bc2329`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:00:11 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 03 Mar 2017 22:00:11 GMT
ENV HOME=/home/user
# Fri, 03 Mar 2017 22:00:12 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 03 Mar 2017 22:00:12 GMT
ENV LANG=C.UTF-8
# Mon, 13 Mar 2017 18:26:09 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:52 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 13 Mar 2017 18:26:52 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:53 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395db7b6173c1b6b5042a18d2a634110eece90896af566af8b8e46d307485d2`  
		Last Modified: Sat, 04 Mar 2017 05:09:11 GMT  
		Size: 352.8 KB (352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779046b90289050919f47aa121a711eafb513443e34d69a18dbc4b9cfe6cb8b`  
		Last Modified: Sat, 04 Mar 2017 05:09:09 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237afc3b03dfa69d1cdd33331090a0fb6ab45148b6f4fb8eb3a3ee82c6f85938`  
		Last Modified: Mon, 13 Mar 2017 18:28:58 GMT  
		Size: 18.9 MB (18926872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:6d948bb88807ae0c0463319721ecc6f1f52be9ea428a1fa9f1883781a26d384d
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21186147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc625da08707c55ce818b9df9d0cc507014fb77905adafd29a7bab10d3bc2329`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:00:11 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 03 Mar 2017 22:00:11 GMT
ENV HOME=/home/user
# Fri, 03 Mar 2017 22:00:12 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 03 Mar 2017 22:00:12 GMT
ENV LANG=C.UTF-8
# Mon, 13 Mar 2017 18:26:09 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:52 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 13 Mar 2017 18:26:52 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:53 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395db7b6173c1b6b5042a18d2a634110eece90896af566af8b8e46d307485d2`  
		Last Modified: Sat, 04 Mar 2017 05:09:11 GMT  
		Size: 352.8 KB (352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779046b90289050919f47aa121a711eafb513443e34d69a18dbc4b9cfe6cb8b`  
		Last Modified: Sat, 04 Mar 2017 05:09:09 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237afc3b03dfa69d1cdd33331090a0fb6ab45148b6f4fb8eb3a3ee82c6f85938`  
		Last Modified: Mon, 13 Mar 2017 18:28:58 GMT  
		Size: 18.9 MB (18926872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:6d948bb88807ae0c0463319721ecc6f1f52be9ea428a1fa9f1883781a26d384d
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21186147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc625da08707c55ce818b9df9d0cc507014fb77905adafd29a7bab10d3bc2329`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 22:00:11 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 03 Mar 2017 22:00:11 GMT
ENV HOME=/home/user
# Fri, 03 Mar 2017 22:00:12 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 03 Mar 2017 22:00:12 GMT
ENV LANG=C.UTF-8
# Mon, 13 Mar 2017 18:26:09 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 13 Mar 2017 18:26:52 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Mon, 13 Mar 2017 18:26:52 GMT
WORKDIR /home/user
# Mon, 13 Mar 2017 18:26:53 GMT
USER [user]
# Mon, 13 Mar 2017 18:26:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5395db7b6173c1b6b5042a18d2a634110eece90896af566af8b8e46d307485d2`  
		Last Modified: Sat, 04 Mar 2017 05:09:11 GMT  
		Size: 352.8 KB (352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779046b90289050919f47aa121a711eafb513443e34d69a18dbc4b9cfe6cb8b`  
		Last Modified: Sat, 04 Mar 2017 05:09:09 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237afc3b03dfa69d1cdd33331090a0fb6ab45148b6f4fb8eb3a3ee82c6f85938`  
		Last Modified: Mon, 13 Mar 2017 18:28:58 GMT  
		Size: 18.9 MB (18926872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
