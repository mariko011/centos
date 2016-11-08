<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:0.8.20`](#irssi0820)
-	[`irssi:0.8`](#irssi08)
-	[`irssi:0`](#irssi0)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:0.8.20-debian`](#irssi0820-debian)
-	[`irssi:0.8-debian`](#irssi08-debian)
-	[`irssi:0-debian`](#irssi0-debian)
-	[`irssi:debian`](#irssidebian)
-	[`irssi:0.8.20-alpine`](#irssi0820-alpine)
-	[`irssi:0.8-alpine`](#irssi08-alpine)
-	[`irssi:0-alpine`](#irssi0-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:0.8.20`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-debian`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-debian` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-debian`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-debian` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-debian`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:0-debian` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:debian`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:debian` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-alpine`

```console
$ docker pull irssi@sha256:cfffc10123e74e7d1159341bdd061741b5563af07bba36d0339f61a4bc854c1c
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4d86582316c9ca3af9c59317a03ac9205089faf45f5476721c3b3f4457b263`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 18 Oct 2016 23:30:35 GMT
ENV HOME=/home/user
# Tue, 18 Oct 2016 23:30:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 18 Oct 2016 23:30:36 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 23:30:37 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 18 Oct 2016 23:31:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:31:40 GMT
WORKDIR /home/user
# Tue, 18 Oct 2016 23:31:46 GMT
VOLUME [/home/user/.irssi]
# Tue, 18 Oct 2016 23:31:51 GMT
USER [user]
# Tue, 18 Oct 2016 23:31:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650ae3ea7325bcd5c99a74756631569078d27201e373ce027878b8e09b816513`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 567.1 KB (567068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91888f315b0cec39591f73265c0b7e9855f1318a02265e44857796a7d06ef26`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26389f2ce3e84603a821af45c8ebf74eea0b2a3e98310abf898f183fa5abc678`  
		Last Modified: Tue, 18 Oct 2016 23:32:18 GMT  
		Size: 16.6 MB (16601235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-alpine`

```console
$ docker pull irssi@sha256:cfffc10123e74e7d1159341bdd061741b5563af07bba36d0339f61a4bc854c1c
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4d86582316c9ca3af9c59317a03ac9205089faf45f5476721c3b3f4457b263`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 18 Oct 2016 23:30:35 GMT
ENV HOME=/home/user
# Tue, 18 Oct 2016 23:30:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 18 Oct 2016 23:30:36 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 23:30:37 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 18 Oct 2016 23:31:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:31:40 GMT
WORKDIR /home/user
# Tue, 18 Oct 2016 23:31:46 GMT
VOLUME [/home/user/.irssi]
# Tue, 18 Oct 2016 23:31:51 GMT
USER [user]
# Tue, 18 Oct 2016 23:31:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650ae3ea7325bcd5c99a74756631569078d27201e373ce027878b8e09b816513`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 567.1 KB (567068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91888f315b0cec39591f73265c0b7e9855f1318a02265e44857796a7d06ef26`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26389f2ce3e84603a821af45c8ebf74eea0b2a3e98310abf898f183fa5abc678`  
		Last Modified: Tue, 18 Oct 2016 23:32:18 GMT  
		Size: 16.6 MB (16601235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:cfffc10123e74e7d1159341bdd061741b5563af07bba36d0339f61a4bc854c1c
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4d86582316c9ca3af9c59317a03ac9205089faf45f5476721c3b3f4457b263`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 18 Oct 2016 23:30:35 GMT
ENV HOME=/home/user
# Tue, 18 Oct 2016 23:30:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 18 Oct 2016 23:30:36 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 23:30:37 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 18 Oct 2016 23:31:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:31:40 GMT
WORKDIR /home/user
# Tue, 18 Oct 2016 23:31:46 GMT
VOLUME [/home/user/.irssi]
# Tue, 18 Oct 2016 23:31:51 GMT
USER [user]
# Tue, 18 Oct 2016 23:31:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650ae3ea7325bcd5c99a74756631569078d27201e373ce027878b8e09b816513`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 567.1 KB (567068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91888f315b0cec39591f73265c0b7e9855f1318a02265e44857796a7d06ef26`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26389f2ce3e84603a821af45c8ebf74eea0b2a3e98310abf898f183fa5abc678`  
		Last Modified: Tue, 18 Oct 2016 23:32:18 GMT  
		Size: 16.6 MB (16601235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:cfffc10123e74e7d1159341bdd061741b5563af07bba36d0339f61a4bc854c1c
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4d86582316c9ca3af9c59317a03ac9205089faf45f5476721c3b3f4457b263`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:11 GMT
ADD file:38d7394b7e1446856c1f378920107516931ca6f4099489ba9d7138432b8c3ecb in / 
# Tue, 18 Oct 2016 23:30:34 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 18 Oct 2016 23:30:35 GMT
ENV HOME=/home/user
# Tue, 18 Oct 2016 23:30:36 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 18 Oct 2016 23:30:36 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 23:30:37 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 18 Oct 2016 23:31:39 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:31:40 GMT
WORKDIR /home/user
# Tue, 18 Oct 2016 23:31:46 GMT
VOLUME [/home/user/.irssi]
# Tue, 18 Oct 2016 23:31:51 GMT
USER [user]
# Tue, 18 Oct 2016 23:31:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:985c5f84712be156e14b68341b3f7aa6025dd27d104d215739312ee18fff5ac0`  
		Last Modified: Tue, 18 Oct 2016 20:32:19 GMT  
		Size: 2.3 MB (2323454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650ae3ea7325bcd5c99a74756631569078d27201e373ce027878b8e09b816513`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 567.1 KB (567068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91888f315b0cec39591f73265c0b7e9855f1318a02265e44857796a7d06ef26`  
		Last Modified: Tue, 18 Oct 2016 23:32:11 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26389f2ce3e84603a821af45c8ebf74eea0b2a3e98310abf898f183fa5abc678`  
		Last Modified: Tue, 18 Oct 2016 23:32:18 GMT  
		Size: 16.6 MB (16601235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
