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
$ docker pull irssi@sha256:d6507087b2cb6a759371f462f70e855f47e5011f9c2d65168200bb8bc7f770f4
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97808282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e14288be5aa936a2345f998d2349408c6eb8fbf5653bc34fe8284dfccbeb61`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:36:39 GMT
ENV HOME=/home/user
# Mon, 24 Apr 2017 23:36:40 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 24 Apr 2017 23:36:41 GMT
ENV LANG=C.UTF-8
# Mon, 24 Apr 2017 23:36:42 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 24 Apr 2017 23:37:37 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Apr 2017 23:37:42 GMT
WORKDIR /home/user
# Mon, 24 Apr 2017 23:37:43 GMT
USER [user]
# Mon, 24 Apr 2017 23:37:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc236d20d1b08b4bcab61c04d81291b0dcaad454453bb24ace611bf42120f0d4`  
		Last Modified: Tue, 25 Apr 2017 18:22:20 GMT  
		Size: 33.0 MB (33035207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eaabe7e66d1f8e7c1fa392f054e862132e1719751a3ff4b7d8d534913b2f21`  
		Last Modified: Tue, 25 Apr 2017 18:22:10 GMT  
		Size: 4.4 KB (4390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906a938c4c12f06758f323bea0e1050abc5666ff9440176f0e3d788425da7c4c`  
		Last Modified: Tue, 25 Apr 2017 18:22:15 GMT  
		Size: 12.2 MB (12218409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:d6507087b2cb6a759371f462f70e855f47e5011f9c2d65168200bb8bc7f770f4
```

-	Platforms:
	-	linux; amd64

### `irssi:1.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97808282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e14288be5aa936a2345f998d2349408c6eb8fbf5653bc34fe8284dfccbeb61`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:36:39 GMT
ENV HOME=/home/user
# Mon, 24 Apr 2017 23:36:40 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 24 Apr 2017 23:36:41 GMT
ENV LANG=C.UTF-8
# Mon, 24 Apr 2017 23:36:42 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 24 Apr 2017 23:37:37 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Apr 2017 23:37:42 GMT
WORKDIR /home/user
# Mon, 24 Apr 2017 23:37:43 GMT
USER [user]
# Mon, 24 Apr 2017 23:37:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc236d20d1b08b4bcab61c04d81291b0dcaad454453bb24ace611bf42120f0d4`  
		Last Modified: Tue, 25 Apr 2017 18:22:20 GMT  
		Size: 33.0 MB (33035207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eaabe7e66d1f8e7c1fa392f054e862132e1719751a3ff4b7d8d534913b2f21`  
		Last Modified: Tue, 25 Apr 2017 18:22:10 GMT  
		Size: 4.4 KB (4390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906a938c4c12f06758f323bea0e1050abc5666ff9440176f0e3d788425da7c4c`  
		Last Modified: Tue, 25 Apr 2017 18:22:15 GMT  
		Size: 12.2 MB (12218409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1`

```console
$ docker pull irssi@sha256:d6507087b2cb6a759371f462f70e855f47e5011f9c2d65168200bb8bc7f770f4
```

-	Platforms:
	-	linux; amd64

### `irssi:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97808282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e14288be5aa936a2345f998d2349408c6eb8fbf5653bc34fe8284dfccbeb61`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:36:39 GMT
ENV HOME=/home/user
# Mon, 24 Apr 2017 23:36:40 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 24 Apr 2017 23:36:41 GMT
ENV LANG=C.UTF-8
# Mon, 24 Apr 2017 23:36:42 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 24 Apr 2017 23:37:37 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Apr 2017 23:37:42 GMT
WORKDIR /home/user
# Mon, 24 Apr 2017 23:37:43 GMT
USER [user]
# Mon, 24 Apr 2017 23:37:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc236d20d1b08b4bcab61c04d81291b0dcaad454453bb24ace611bf42120f0d4`  
		Last Modified: Tue, 25 Apr 2017 18:22:20 GMT  
		Size: 33.0 MB (33035207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eaabe7e66d1f8e7c1fa392f054e862132e1719751a3ff4b7d8d534913b2f21`  
		Last Modified: Tue, 25 Apr 2017 18:22:10 GMT  
		Size: 4.4 KB (4390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906a938c4c12f06758f323bea0e1050abc5666ff9440176f0e3d788425da7c4c`  
		Last Modified: Tue, 25 Apr 2017 18:22:15 GMT  
		Size: 12.2 MB (12218409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:d6507087b2cb6a759371f462f70e855f47e5011f9c2d65168200bb8bc7f770f4
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97808282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e14288be5aa936a2345f998d2349408c6eb8fbf5653bc34fe8284dfccbeb61`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:36:39 GMT
ENV HOME=/home/user
# Mon, 24 Apr 2017 23:36:40 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 24 Apr 2017 23:36:41 GMT
ENV LANG=C.UTF-8
# Mon, 24 Apr 2017 23:36:42 GMT
ENV IRSSI_VERSION=1.0.2
# Mon, 24 Apr 2017 23:37:37 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Apr 2017 23:37:42 GMT
WORKDIR /home/user
# Mon, 24 Apr 2017 23:37:43 GMT
USER [user]
# Mon, 24 Apr 2017 23:37:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc236d20d1b08b4bcab61c04d81291b0dcaad454453bb24ace611bf42120f0d4`  
		Last Modified: Tue, 25 Apr 2017 18:22:20 GMT  
		Size: 33.0 MB (33035207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eaabe7e66d1f8e7c1fa392f054e862132e1719751a3ff4b7d8d534913b2f21`  
		Last Modified: Tue, 25 Apr 2017 18:22:10 GMT  
		Size: 4.4 KB (4390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906a938c4c12f06758f323bea0e1050abc5666ff9440176f0e3d788425da7c4c`  
		Last Modified: Tue, 25 Apr 2017 18:22:15 GMT  
		Size: 12.2 MB (12218409 bytes)  
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
