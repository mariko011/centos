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
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-debian`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-debian`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-debian`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:0-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:debian`

```console
$ docker pull irssi@sha256:e993681216b2bd1f0e300e27ab03cea16097839d34a426557cc4e5b8951e5362
```

-	Platforms:
	-	linux; amd64

### `irssi:debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5c9ab0e4c235701705137958871315025bf67c6b0e2656d234f66afeacb3cb`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:25:37 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 19:25:38 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 19:25:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:25:39 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 19:26:33 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:26:33 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 19:26:34 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 19:26:34 GMT
USER [user]
# Fri, 23 Sep 2016 19:26:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b3efc56c6e280c39884fc9f8d7ded3f83def5f9998d3e075b64f1871dc46b`  
		Last Modified: Fri, 23 Sep 2016 19:26:50 GMT  
		Size: 32.3 MB (32257796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1eecd61f492613ddda25722ca6583c0209fe98895d15dc186209d2b750e461e`  
		Last Modified: Fri, 23 Sep 2016 19:26:42 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22912c0b00d04b4a1cf6829da6eaa7c197e456f8829d78ab739f33a501e2f2a9`  
		Last Modified: Fri, 23 Sep 2016 19:26:46 GMT  
		Size: 12.1 MB (12072457 bytes)  
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
