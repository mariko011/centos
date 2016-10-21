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
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-debian`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-debian`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-debian`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:0-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:debian`

```console
$ docker pull irssi@sha256:672354d6c816a583c1a7b18a19e4c275bda630eca1a28fdc8f162320c8d5e930
```

-	Platforms:
	-	linux; amd64

### `irssi:debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95688808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbd282e9ad0ae1dbcd8172877a497c8066c1ef7c663d49777f315f1d023677`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:00:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:00:01 GMT
ENV HOME=/home/user
# Fri, 21 Oct 2016 20:00:02 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Oct 2016 20:00:02 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:00:03 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 21 Oct 2016 20:01:15 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 21 Oct 2016 20:01:16 GMT
WORKDIR /home/user
# Fri, 21 Oct 2016 20:01:16 GMT
VOLUME [/home/user/.irssi]
# Fri, 21 Oct 2016 20:01:16 GMT
USER [user]
# Fri, 21 Oct 2016 20:01:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e675ba7d522377194293a08de15e10bee49e1dd44024416652aa00a984473b71`  
		Last Modified: Fri, 21 Oct 2016 20:01:36 GMT  
		Size: 32.3 MB (32258565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dc0cbfa6b88089642309ac3272baf8913195f3193f03804bf65133753d37bd`  
		Last Modified: Fri, 21 Oct 2016 20:01:26 GMT  
		Size: 4.4 KB (4364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c03cbed8e5a8609357f73892e0a25450e9f6ee57f234cbd96f712da49a37bd8`  
		Last Modified: Fri, 21 Oct 2016 20:01:30 GMT  
		Size: 12.1 MB (12072754 bytes)  
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
