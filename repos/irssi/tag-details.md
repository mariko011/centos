<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1.0.3`](#irssi103)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1`](#irssi1)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:1.0.3-alpine`](#irssi103-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)

## `irssi:1.0.3`

```console
$ docker pull irssi@sha256:331f49800cc836100a1288629937ed69320b4e8bf43c143ce2327994832d3ebd
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97833036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5053cc163144c9096b49871e2535fbf61834d41e4949e4fd9094a91dc91dd0b5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:14:47 GMT
ENV HOME=/home/user
# Thu, 08 Jun 2017 06:14:49 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 08 Jun 2017 06:14:50 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:09:30 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:10:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 17:11:09 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:11:11 GMT
USER [user]
# Thu, 08 Jun 2017 17:11:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8735f80ea041106ae75a8c29a6487008379293c04541df5462bf88dba5a97ef3`  
		Last Modified: Thu, 08 Jun 2017 17:14:15 GMT  
		Size: 33.0 MB (33031157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce776c793d15f358fefa8799e66776ae08290b99c462adb60c058ff0c0057fe`  
		Last Modified: Thu, 08 Jun 2017 17:14:05 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b4eafca64af344463d4aec3a6fed715a6954b8f5ef5864b884f6346a3e99e5`  
		Last Modified: Thu, 08 Jun 2017 17:14:08 GMT  
		Size: 12.2 MB (12229214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:331f49800cc836100a1288629937ed69320b4e8bf43c143ce2327994832d3ebd
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97833036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5053cc163144c9096b49871e2535fbf61834d41e4949e4fd9094a91dc91dd0b5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:14:47 GMT
ENV HOME=/home/user
# Thu, 08 Jun 2017 06:14:49 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 08 Jun 2017 06:14:50 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:09:30 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:10:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 17:11:09 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:11:11 GMT
USER [user]
# Thu, 08 Jun 2017 17:11:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8735f80ea041106ae75a8c29a6487008379293c04541df5462bf88dba5a97ef3`  
		Last Modified: Thu, 08 Jun 2017 17:14:15 GMT  
		Size: 33.0 MB (33031157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce776c793d15f358fefa8799e66776ae08290b99c462adb60c058ff0c0057fe`  
		Last Modified: Thu, 08 Jun 2017 17:14:05 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b4eafca64af344463d4aec3a6fed715a6954b8f5ef5864b884f6346a3e99e5`  
		Last Modified: Thu, 08 Jun 2017 17:14:08 GMT  
		Size: 12.2 MB (12229214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:331f49800cc836100a1288629937ed69320b4e8bf43c143ce2327994832d3ebd
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97833036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5053cc163144c9096b49871e2535fbf61834d41e4949e4fd9094a91dc91dd0b5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:14:47 GMT
ENV HOME=/home/user
# Thu, 08 Jun 2017 06:14:49 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 08 Jun 2017 06:14:50 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:09:30 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:10:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 17:11:09 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:11:11 GMT
USER [user]
# Thu, 08 Jun 2017 17:11:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8735f80ea041106ae75a8c29a6487008379293c04541df5462bf88dba5a97ef3`  
		Last Modified: Thu, 08 Jun 2017 17:14:15 GMT  
		Size: 33.0 MB (33031157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce776c793d15f358fefa8799e66776ae08290b99c462adb60c058ff0c0057fe`  
		Last Modified: Thu, 08 Jun 2017 17:14:05 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b4eafca64af344463d4aec3a6fed715a6954b8f5ef5864b884f6346a3e99e5`  
		Last Modified: Thu, 08 Jun 2017 17:14:08 GMT  
		Size: 12.2 MB (12229214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:331f49800cc836100a1288629937ed69320b4e8bf43c143ce2327994832d3ebd
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97833036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5053cc163144c9096b49871e2535fbf61834d41e4949e4fd9094a91dc91dd0b5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:14:47 GMT
ENV HOME=/home/user
# Thu, 08 Jun 2017 06:14:49 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Thu, 08 Jun 2017 06:14:50 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:09:30 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:10:40 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 17:11:09 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:11:11 GMT
USER [user]
# Thu, 08 Jun 2017 17:11:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8735f80ea041106ae75a8c29a6487008379293c04541df5462bf88dba5a97ef3`  
		Last Modified: Thu, 08 Jun 2017 17:14:15 GMT  
		Size: 33.0 MB (33031157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce776c793d15f358fefa8799e66776ae08290b99c462adb60c058ff0c0057fe`  
		Last Modified: Thu, 08 Jun 2017 17:14:05 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b4eafca64af344463d4aec3a6fed715a6954b8f5ef5864b884f6346a3e99e5`  
		Last Modified: Thu, 08 Jun 2017 17:14:08 GMT  
		Size: 12.2 MB (12229214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.3-alpine`

```console
$ docker pull irssi@sha256:6e6aadd48714bc582a96f55d1c899eda27849c85246a145f6fb82c322d15da8e
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c426c309a3002acc38d981661e9917883ea7572b6151e248e931961a31867dc`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:34:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 May 2017 20:35:06 GMT
ENV HOME=/home/user
# Tue, 30 May 2017 20:35:07 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 May 2017 20:35:08 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:11:38 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:12:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 08 Jun 2017 17:13:13 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:13:15 GMT
USER [user]
# Thu, 08 Jun 2017 17:13:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e529081753ad44079e30854d1a7615242a0776090a4643675d58d2a7becdf5e`  
		Last Modified: Tue, 30 May 2017 20:36:21 GMT  
		Size: 350.6 KB (350628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a50c57dbe600edd4195da35db92b385586ce74f2522c3603c2e567bd5ca6ed0`  
		Last Modified: Tue, 30 May 2017 20:36:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acea50e75078730d91ecf8269986f52ef2a6275f8c7b4e8540a298b49077e0d`  
		Last Modified: Thu, 08 Jun 2017 17:16:43 GMT  
		Size: 19.2 MB (19186064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:6e6aadd48714bc582a96f55d1c899eda27849c85246a145f6fb82c322d15da8e
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c426c309a3002acc38d981661e9917883ea7572b6151e248e931961a31867dc`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:34:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 May 2017 20:35:06 GMT
ENV HOME=/home/user
# Tue, 30 May 2017 20:35:07 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 May 2017 20:35:08 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:11:38 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:12:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 08 Jun 2017 17:13:13 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:13:15 GMT
USER [user]
# Thu, 08 Jun 2017 17:13:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e529081753ad44079e30854d1a7615242a0776090a4643675d58d2a7becdf5e`  
		Last Modified: Tue, 30 May 2017 20:36:21 GMT  
		Size: 350.6 KB (350628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a50c57dbe600edd4195da35db92b385586ce74f2522c3603c2e567bd5ca6ed0`  
		Last Modified: Tue, 30 May 2017 20:36:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acea50e75078730d91ecf8269986f52ef2a6275f8c7b4e8540a298b49077e0d`  
		Last Modified: Thu, 08 Jun 2017 17:16:43 GMT  
		Size: 19.2 MB (19186064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:6e6aadd48714bc582a96f55d1c899eda27849c85246a145f6fb82c322d15da8e
```

-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c426c309a3002acc38d981661e9917883ea7572b6151e248e931961a31867dc`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:34:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 May 2017 20:35:06 GMT
ENV HOME=/home/user
# Tue, 30 May 2017 20:35:07 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 May 2017 20:35:08 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:11:38 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:12:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 08 Jun 2017 17:13:13 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:13:15 GMT
USER [user]
# Thu, 08 Jun 2017 17:13:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e529081753ad44079e30854d1a7615242a0776090a4643675d58d2a7becdf5e`  
		Last Modified: Tue, 30 May 2017 20:36:21 GMT  
		Size: 350.6 KB (350628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a50c57dbe600edd4195da35db92b385586ce74f2522c3603c2e567bd5ca6ed0`  
		Last Modified: Tue, 30 May 2017 20:36:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acea50e75078730d91ecf8269986f52ef2a6275f8c7b4e8540a298b49077e0d`  
		Last Modified: Thu, 08 Jun 2017 17:16:43 GMT  
		Size: 19.2 MB (19186064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:6e6aadd48714bc582a96f55d1c899eda27849c85246a145f6fb82c322d15da8e
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c426c309a3002acc38d981661e9917883ea7572b6151e248e931961a31867dc`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:34:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 May 2017 20:35:06 GMT
ENV HOME=/home/user
# Tue, 30 May 2017 20:35:07 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 May 2017 20:35:08 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:11:38 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:12:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 08 Jun 2017 17:13:13 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:13:15 GMT
USER [user]
# Thu, 08 Jun 2017 17:13:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e529081753ad44079e30854d1a7615242a0776090a4643675d58d2a7becdf5e`  
		Last Modified: Tue, 30 May 2017 20:36:21 GMT  
		Size: 350.6 KB (350628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a50c57dbe600edd4195da35db92b385586ce74f2522c3603c2e567bd5ca6ed0`  
		Last Modified: Tue, 30 May 2017 20:36:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acea50e75078730d91ecf8269986f52ef2a6275f8c7b4e8540a298b49077e0d`  
		Last Modified: Thu, 08 Jun 2017 17:16:43 GMT  
		Size: 19.2 MB (19186064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
