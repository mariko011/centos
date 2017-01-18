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
$ docker pull irssi@sha256:da4932bb27c3ba6123fd1771c396b8237444381383e9b93a2a1616d92cf01b21
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95762869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83450f7f102320746b1a1b5817956ee428edeb4991ca5324cd5e6e15acc3f30`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:47:28 GMT
ENV HOME=/home/user
# Tue, 17 Jan 2017 00:47:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 17 Jan 2017 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:47:29 GMT
ENV IRSSI_VERSION=1.0.0
# Tue, 17 Jan 2017 00:48:22 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:48:22 GMT
WORKDIR /home/user
# Tue, 17 Jan 2017 00:48:23 GMT
VOLUME [/home/user/.irssi]
# Tue, 17 Jan 2017 00:48:23 GMT
USER [user]
# Tue, 17 Jan 2017 00:48:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06777db5e105cc0415b734dfe2028b029422171ff3f51dc9a8afeab8e7676ce5`  
		Last Modified: Wed, 18 Jan 2017 04:13:09 GMT  
		Size: 32.3 MB (32253970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48011afb85960c91df7ab455cb886d7f86b6214d17f854f972dc94929025adfa`  
		Last Modified: Wed, 18 Jan 2017 04:12:57 GMT  
		Size: 4.4 KB (4362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad0dfa092c72f0bc88d10e864a8ceeb845e4fe5fb7017801f07a75bc355d48`  
		Last Modified: Wed, 18 Jan 2017 04:13:04 GMT  
		Size: 12.1 MB (12143327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:da4932bb27c3ba6123fd1771c396b8237444381383e9b93a2a1616d92cf01b21
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95762869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83450f7f102320746b1a1b5817956ee428edeb4991ca5324cd5e6e15acc3f30`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:47:28 GMT
ENV HOME=/home/user
# Tue, 17 Jan 2017 00:47:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 17 Jan 2017 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:47:29 GMT
ENV IRSSI_VERSION=1.0.0
# Tue, 17 Jan 2017 00:48:22 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:48:22 GMT
WORKDIR /home/user
# Tue, 17 Jan 2017 00:48:23 GMT
VOLUME [/home/user/.irssi]
# Tue, 17 Jan 2017 00:48:23 GMT
USER [user]
# Tue, 17 Jan 2017 00:48:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06777db5e105cc0415b734dfe2028b029422171ff3f51dc9a8afeab8e7676ce5`  
		Last Modified: Wed, 18 Jan 2017 04:13:09 GMT  
		Size: 32.3 MB (32253970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48011afb85960c91df7ab455cb886d7f86b6214d17f854f972dc94929025adfa`  
		Last Modified: Wed, 18 Jan 2017 04:12:57 GMT  
		Size: 4.4 KB (4362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad0dfa092c72f0bc88d10e864a8ceeb845e4fe5fb7017801f07a75bc355d48`  
		Last Modified: Wed, 18 Jan 2017 04:13:04 GMT  
		Size: 12.1 MB (12143327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:da4932bb27c3ba6123fd1771c396b8237444381383e9b93a2a1616d92cf01b21
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95762869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83450f7f102320746b1a1b5817956ee428edeb4991ca5324cd5e6e15acc3f30`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:47:28 GMT
ENV HOME=/home/user
# Tue, 17 Jan 2017 00:47:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 17 Jan 2017 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:47:29 GMT
ENV IRSSI_VERSION=1.0.0
# Tue, 17 Jan 2017 00:48:22 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:48:22 GMT
WORKDIR /home/user
# Tue, 17 Jan 2017 00:48:23 GMT
VOLUME [/home/user/.irssi]
# Tue, 17 Jan 2017 00:48:23 GMT
USER [user]
# Tue, 17 Jan 2017 00:48:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06777db5e105cc0415b734dfe2028b029422171ff3f51dc9a8afeab8e7676ce5`  
		Last Modified: Wed, 18 Jan 2017 04:13:09 GMT  
		Size: 32.3 MB (32253970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48011afb85960c91df7ab455cb886d7f86b6214d17f854f972dc94929025adfa`  
		Last Modified: Wed, 18 Jan 2017 04:12:57 GMT  
		Size: 4.4 KB (4362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad0dfa092c72f0bc88d10e864a8ceeb845e4fe5fb7017801f07a75bc355d48`  
		Last Modified: Wed, 18 Jan 2017 04:13:04 GMT  
		Size: 12.1 MB (12143327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:da4932bb27c3ba6123fd1771c396b8237444381383e9b93a2a1616d92cf01b21
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95762869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83450f7f102320746b1a1b5817956ee428edeb4991ca5324cd5e6e15acc3f30`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:47:28 GMT
ENV HOME=/home/user
# Tue, 17 Jan 2017 00:47:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 17 Jan 2017 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:47:29 GMT
ENV IRSSI_VERSION=1.0.0
# Tue, 17 Jan 2017 00:48:22 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:48:22 GMT
WORKDIR /home/user
# Tue, 17 Jan 2017 00:48:23 GMT
VOLUME [/home/user/.irssi]
# Tue, 17 Jan 2017 00:48:23 GMT
USER [user]
# Tue, 17 Jan 2017 00:48:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06777db5e105cc0415b734dfe2028b029422171ff3f51dc9a8afeab8e7676ce5`  
		Last Modified: Wed, 18 Jan 2017 04:13:09 GMT  
		Size: 32.3 MB (32253970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48011afb85960c91df7ab455cb886d7f86b6214d17f854f972dc94929025adfa`  
		Last Modified: Wed, 18 Jan 2017 04:12:57 GMT  
		Size: 4.4 KB (4362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad0dfa092c72f0bc88d10e864a8ceeb845e4fe5fb7017801f07a75bc355d48`  
		Last Modified: Wed, 18 Jan 2017 04:13:04 GMT  
		Size: 12.1 MB (12143327 bytes)  
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
