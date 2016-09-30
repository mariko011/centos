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
$ docker pull irssi@sha256:cdd5a0a3a3cbf3e6a517678999480b4578f83115f2a3ed2a1894f77fd0fbc588
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
$ docker pull irssi@sha256:cdd5a0a3a3cbf3e6a517678999480b4578f83115f2a3ed2a1894f77fd0fbc588
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
$ docker pull irssi@sha256:cdd5a0a3a3cbf3e6a517678999480b4578f83115f2a3ed2a1894f77fd0fbc588
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
$ docker pull irssi@sha256:cdd5a0a3a3cbf3e6a517678999480b4578f83115f2a3ed2a1894f77fd0fbc588
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
$ docker pull irssi@sha256:cdd5a0a3a3cbf3e6a517678999480b4578f83115f2a3ed2a1894f77fd0fbc588
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
$ docker pull irssi@sha256:731c9b9d62a1021844b4a906e756473669764e5380174acc10aeb38f6ce79078
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19492846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a0a3f8f5c0d790939807481823ad5908f15e865cee7e1a8e9bd2ff27656a1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:53 GMT
ADD file:c42c4568b2624d4cd140c00d14ead8fbc20dd53cff1bd5e5c2af558c9fab79b2 in / 
# Fri, 23 Sep 2016 17:00:56 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 23 Sep 2016 17:00:56 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 17:00:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 17:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:00:58 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 17:01:41 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:01:42 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 17:01:42 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 17:01:42 GMT
USER [user]
# Fri, 23 Sep 2016 17:01:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a98829b155f259d7089ff85e9a6769c72cf5aa674c0ef6169f5305ef6b85340`  
		Last Modified: Fri, 23 Sep 2016 16:30:40 GMT  
		Size: 2.3 MB (2323433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf9bd7c4424748aaea81df2a7ac688b056272d7dc44115b6a301fcd143f9958`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 567.1 KB (567067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f92ba8f57c0add32c169f01de4a3df779f3a8eb1454741244e5f86aba62af8`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3172da2add130a00ece247ffaa5724bbfb7c58e7d7505ec5ac57e72471902b03`  
		Last Modified: Fri, 23 Sep 2016 17:01:56 GMT  
		Size: 16.6 MB (16601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-alpine`

```console
$ docker pull irssi@sha256:731c9b9d62a1021844b4a906e756473669764e5380174acc10aeb38f6ce79078
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19492846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a0a3f8f5c0d790939807481823ad5908f15e865cee7e1a8e9bd2ff27656a1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:53 GMT
ADD file:c42c4568b2624d4cd140c00d14ead8fbc20dd53cff1bd5e5c2af558c9fab79b2 in / 
# Fri, 23 Sep 2016 17:00:56 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 23 Sep 2016 17:00:56 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 17:00:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 17:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:00:58 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 17:01:41 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:01:42 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 17:01:42 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 17:01:42 GMT
USER [user]
# Fri, 23 Sep 2016 17:01:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a98829b155f259d7089ff85e9a6769c72cf5aa674c0ef6169f5305ef6b85340`  
		Last Modified: Fri, 23 Sep 2016 16:30:40 GMT  
		Size: 2.3 MB (2323433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf9bd7c4424748aaea81df2a7ac688b056272d7dc44115b6a301fcd143f9958`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 567.1 KB (567067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f92ba8f57c0add32c169f01de4a3df779f3a8eb1454741244e5f86aba62af8`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3172da2add130a00ece247ffaa5724bbfb7c58e7d7505ec5ac57e72471902b03`  
		Last Modified: Fri, 23 Sep 2016 17:01:56 GMT  
		Size: 16.6 MB (16601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:7b63b548c77487100329ffdf44c7321d71d338524ffc93b238355106566ba1e3
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19492846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a0a3f8f5c0d790939807481823ad5908f15e865cee7e1a8e9bd2ff27656a1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:53 GMT
ADD file:c42c4568b2624d4cd140c00d14ead8fbc20dd53cff1bd5e5c2af558c9fab79b2 in / 
# Fri, 23 Sep 2016 17:00:56 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 23 Sep 2016 17:00:56 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 17:00:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 17:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:00:58 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 17:01:41 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:01:42 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 17:01:42 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 17:01:42 GMT
USER [user]
# Fri, 23 Sep 2016 17:01:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a98829b155f259d7089ff85e9a6769c72cf5aa674c0ef6169f5305ef6b85340`  
		Last Modified: Fri, 23 Sep 2016 16:30:40 GMT  
		Size: 2.3 MB (2323433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf9bd7c4424748aaea81df2a7ac688b056272d7dc44115b6a301fcd143f9958`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 567.1 KB (567067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f92ba8f57c0add32c169f01de4a3df779f3a8eb1454741244e5f86aba62af8`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3172da2add130a00ece247ffaa5724bbfb7c58e7d7505ec5ac57e72471902b03`  
		Last Modified: Fri, 23 Sep 2016 17:01:56 GMT  
		Size: 16.6 MB (16601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:7b63b548c77487100329ffdf44c7321d71d338524ffc93b238355106566ba1e3
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19492846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a0a3f8f5c0d790939807481823ad5908f15e865cee7e1a8e9bd2ff27656a1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:53 GMT
ADD file:c42c4568b2624d4cd140c00d14ead8fbc20dd53cff1bd5e5c2af558c9fab79b2 in / 
# Fri, 23 Sep 2016 17:00:56 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 23 Sep 2016 17:00:56 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 17:00:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 17:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:00:58 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 17:01:41 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:01:42 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 17:01:42 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 17:01:42 GMT
USER [user]
# Fri, 23 Sep 2016 17:01:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a98829b155f259d7089ff85e9a6769c72cf5aa674c0ef6169f5305ef6b85340`  
		Last Modified: Fri, 23 Sep 2016 16:30:40 GMT  
		Size: 2.3 MB (2323433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf9bd7c4424748aaea81df2a7ac688b056272d7dc44115b6a301fcd143f9958`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 567.1 KB (567067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f92ba8f57c0add32c169f01de4a3df779f3a8eb1454741244e5f86aba62af8`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3172da2add130a00ece247ffaa5724bbfb7c58e7d7505ec5ac57e72471902b03`  
		Last Modified: Fri, 23 Sep 2016 17:01:56 GMT  
		Size: 16.6 MB (16601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
