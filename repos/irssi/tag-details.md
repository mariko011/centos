<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1`](#irssi1)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1.0.6`](#irssi106)
-	[`irssi:1.0.6-alpine`](#irssi106-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)
-	[`irssi:latest`](#irssilatest)

## `irssi:1`

```console
$ docker pull irssi@sha256:a25e6ef7ba703e37b98a432b2fc98c501f92e3171ca716585c40d7ead44f0bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1` - linux; amd64

```console
$ docker pull irssi@sha256:2054656664028315a7941bf390024e3e5353186a019875cf83a9eb5514c62686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98117031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79c42d136e0fe346eea2fd2eaeee9caa79192cd7a8be0ab0d955b8edb985d96`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:52:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:52:05 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 04:52:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 04:52:07 GMT
ENV LANG=C.UTF-8
# Mon, 08 Jan 2018 22:50:27 GMT
ENV IRSSI_VERSION=1.0.6
# Mon, 08 Jan 2018 22:51:30 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 08 Jan 2018 22:51:30 GMT
WORKDIR /home/user
# Mon, 08 Jan 2018 22:51:30 GMT
USER [user]
# Mon, 08 Jan 2018 22:51:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5640d4da043d1b37a42856572024689b31e4197a588084c18bd30cf1025c04b8`  
		Last Modified: Tue, 12 Dec 2017 04:53:43 GMT  
		Size: 33.0 MB (33032488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605b81dbad790ac85a07aa7b1a70d5a45eecbac5952ebeb816108c6e1ac2b50d`  
		Last Modified: Tue, 12 Dec 2017 04:53:38 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2010fc6a614b1fac93de3d1c5570fd1e164bc1aa2e59400a4de47c351aa30`  
		Last Modified: Mon, 08 Jan 2018 22:53:22 GMT  
		Size: 12.5 MB (12480421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:a4bd9443b7cd5045b7ea9a410c97ca38f328b5df634ab99d3826959237114010
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97425399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8b4125e7eaa0926a248af2b7a0a45a2d1dc05a1a098a35854475eae425dd63`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:03:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:03:52 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 03:04:10 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 03:04:13 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:17:22 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:20:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 04:20:53 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:20:54 GMT
USER [user]
# Tue, 09 Jan 2018 04:20:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e8d82db80031a3c015bb815276bc4c70c00daf15447d317795c80ca3e8945f`  
		Last Modified: Tue, 12 Dec 2017 03:12:49 GMT  
		Size: 32.9 MB (32864458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9462db20094b98eecbac6419dfd3cf1a055ad3843987b472809250fb1e81704`  
		Last Modified: Tue, 12 Dec 2017 03:12:40 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdef0ed94e6051b21cb7f907290cd1a1b42a573d83d21c000dd25073a54fac2c`  
		Last Modified: Tue, 09 Jan 2018 04:22:56 GMT  
		Size: 12.7 MB (12747468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:a25e6ef7ba703e37b98a432b2fc98c501f92e3171ca716585c40d7ead44f0bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1.0` - linux; amd64

```console
$ docker pull irssi@sha256:2054656664028315a7941bf390024e3e5353186a019875cf83a9eb5514c62686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98117031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79c42d136e0fe346eea2fd2eaeee9caa79192cd7a8be0ab0d955b8edb985d96`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:52:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:52:05 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 04:52:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 04:52:07 GMT
ENV LANG=C.UTF-8
# Mon, 08 Jan 2018 22:50:27 GMT
ENV IRSSI_VERSION=1.0.6
# Mon, 08 Jan 2018 22:51:30 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 08 Jan 2018 22:51:30 GMT
WORKDIR /home/user
# Mon, 08 Jan 2018 22:51:30 GMT
USER [user]
# Mon, 08 Jan 2018 22:51:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5640d4da043d1b37a42856572024689b31e4197a588084c18bd30cf1025c04b8`  
		Last Modified: Tue, 12 Dec 2017 04:53:43 GMT  
		Size: 33.0 MB (33032488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605b81dbad790ac85a07aa7b1a70d5a45eecbac5952ebeb816108c6e1ac2b50d`  
		Last Modified: Tue, 12 Dec 2017 04:53:38 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2010fc6a614b1fac93de3d1c5570fd1e164bc1aa2e59400a4de47c351aa30`  
		Last Modified: Mon, 08 Jan 2018 22:53:22 GMT  
		Size: 12.5 MB (12480421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; ppc64le

```console
$ docker pull irssi@sha256:a4bd9443b7cd5045b7ea9a410c97ca38f328b5df634ab99d3826959237114010
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97425399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8b4125e7eaa0926a248af2b7a0a45a2d1dc05a1a098a35854475eae425dd63`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:03:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:03:52 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 03:04:10 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 03:04:13 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:17:22 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:20:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 04:20:53 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:20:54 GMT
USER [user]
# Tue, 09 Jan 2018 04:20:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e8d82db80031a3c015bb815276bc4c70c00daf15447d317795c80ca3e8945f`  
		Last Modified: Tue, 12 Dec 2017 03:12:49 GMT  
		Size: 32.9 MB (32864458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9462db20094b98eecbac6419dfd3cf1a055ad3843987b472809250fb1e81704`  
		Last Modified: Tue, 12 Dec 2017 03:12:40 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdef0ed94e6051b21cb7f907290cd1a1b42a573d83d21c000dd25073a54fac2c`  
		Last Modified: Tue, 09 Jan 2018 04:22:56 GMT  
		Size: 12.7 MB (12747468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.6`

```console
$ docker pull irssi@sha256:a25e6ef7ba703e37b98a432b2fc98c501f92e3171ca716585c40d7ead44f0bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1.0.6` - linux; amd64

```console
$ docker pull irssi@sha256:2054656664028315a7941bf390024e3e5353186a019875cf83a9eb5514c62686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98117031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79c42d136e0fe346eea2fd2eaeee9caa79192cd7a8be0ab0d955b8edb985d96`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:52:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:52:05 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 04:52:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 04:52:07 GMT
ENV LANG=C.UTF-8
# Mon, 08 Jan 2018 22:50:27 GMT
ENV IRSSI_VERSION=1.0.6
# Mon, 08 Jan 2018 22:51:30 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 08 Jan 2018 22:51:30 GMT
WORKDIR /home/user
# Mon, 08 Jan 2018 22:51:30 GMT
USER [user]
# Mon, 08 Jan 2018 22:51:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5640d4da043d1b37a42856572024689b31e4197a588084c18bd30cf1025c04b8`  
		Last Modified: Tue, 12 Dec 2017 04:53:43 GMT  
		Size: 33.0 MB (33032488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605b81dbad790ac85a07aa7b1a70d5a45eecbac5952ebeb816108c6e1ac2b50d`  
		Last Modified: Tue, 12 Dec 2017 04:53:38 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2010fc6a614b1fac93de3d1c5570fd1e164bc1aa2e59400a4de47c351aa30`  
		Last Modified: Mon, 08 Jan 2018 22:53:22 GMT  
		Size: 12.5 MB (12480421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.6` - linux; ppc64le

```console
$ docker pull irssi@sha256:a4bd9443b7cd5045b7ea9a410c97ca38f328b5df634ab99d3826959237114010
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97425399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8b4125e7eaa0926a248af2b7a0a45a2d1dc05a1a098a35854475eae425dd63`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:03:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:03:52 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 03:04:10 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 03:04:13 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:17:22 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:20:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 04:20:53 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:20:54 GMT
USER [user]
# Tue, 09 Jan 2018 04:20:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e8d82db80031a3c015bb815276bc4c70c00daf15447d317795c80ca3e8945f`  
		Last Modified: Tue, 12 Dec 2017 03:12:49 GMT  
		Size: 32.9 MB (32864458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9462db20094b98eecbac6419dfd3cf1a055ad3843987b472809250fb1e81704`  
		Last Modified: Tue, 12 Dec 2017 03:12:40 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdef0ed94e6051b21cb7f907290cd1a1b42a573d83d21c000dd25073a54fac2c`  
		Last Modified: Tue, 09 Jan 2018 04:22:56 GMT  
		Size: 12.7 MB (12747468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.6-alpine`

```console
$ docker pull irssi@sha256:fdddc3913f9b5248534d43c82ca2906c4ba7b0047e3b9f3ae1df36d076e558df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `irssi:1.0.6-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:febf07956080e85ffaa84dc2ebfdc46efb8e99915ce314bc56294e08431f8017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18910836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941da100e9c6c92029e30067e83c23aea5ef244b7a1b9aa130b776b006eadae1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 03:17:34 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 03:17:36 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 03:17:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 03:17:42 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:21:05 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:22:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 09 Jan 2018 04:22:30 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:22:32 GMT
USER [user]
# Tue, 09 Jan 2018 04:22:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab549a2c90ac0632598f526cab0538d49c0453b0327cc722cb18a29d4c323657`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 354.2 KB (354235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a92619366e6a3a11a68e9f024a2eab53804a692c6462d1c136234636155463`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e39a0966d39c1b719d4756f49b79033e98c3b8b638ec97bdc46007cfb5581f`  
		Last Modified: Tue, 09 Jan 2018 04:23:27 GMT  
		Size: 16.5 MB (16546561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:fdddc3913f9b5248534d43c82ca2906c4ba7b0047e3b9f3ae1df36d076e558df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `irssi:1.0-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:febf07956080e85ffaa84dc2ebfdc46efb8e99915ce314bc56294e08431f8017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18910836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941da100e9c6c92029e30067e83c23aea5ef244b7a1b9aa130b776b006eadae1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 03:17:34 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 03:17:36 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 03:17:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 03:17:42 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:21:05 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:22:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 09 Jan 2018 04:22:30 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:22:32 GMT
USER [user]
# Tue, 09 Jan 2018 04:22:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab549a2c90ac0632598f526cab0538d49c0453b0327cc722cb18a29d4c323657`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 354.2 KB (354235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a92619366e6a3a11a68e9f024a2eab53804a692c6462d1c136234636155463`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e39a0966d39c1b719d4756f49b79033e98c3b8b638ec97bdc46007cfb5581f`  
		Last Modified: Tue, 09 Jan 2018 04:23:27 GMT  
		Size: 16.5 MB (16546561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:fdddc3913f9b5248534d43c82ca2906c4ba7b0047e3b9f3ae1df36d076e558df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:febf07956080e85ffaa84dc2ebfdc46efb8e99915ce314bc56294e08431f8017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18910836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941da100e9c6c92029e30067e83c23aea5ef244b7a1b9aa130b776b006eadae1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 03:17:34 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 03:17:36 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 03:17:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 03:17:42 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:21:05 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:22:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 09 Jan 2018 04:22:30 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:22:32 GMT
USER [user]
# Tue, 09 Jan 2018 04:22:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab549a2c90ac0632598f526cab0538d49c0453b0327cc722cb18a29d4c323657`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 354.2 KB (354235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a92619366e6a3a11a68e9f024a2eab53804a692c6462d1c136234636155463`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e39a0966d39c1b719d4756f49b79033e98c3b8b638ec97bdc46007cfb5581f`  
		Last Modified: Tue, 09 Jan 2018 04:23:27 GMT  
		Size: 16.5 MB (16546561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:fdddc3913f9b5248534d43c82ca2906c4ba7b0047e3b9f3ae1df36d076e558df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:febf07956080e85ffaa84dc2ebfdc46efb8e99915ce314bc56294e08431f8017
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18910836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941da100e9c6c92029e30067e83c23aea5ef244b7a1b9aa130b776b006eadae1`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 03:17:34 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 27 Oct 2017 03:17:36 GMT
ENV HOME=/home/user
# Fri, 27 Oct 2017 03:17:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 27 Oct 2017 03:17:42 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:21:05 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:22:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 09 Jan 2018 04:22:30 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:22:32 GMT
USER [user]
# Tue, 09 Jan 2018 04:22:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab549a2c90ac0632598f526cab0538d49c0453b0327cc722cb18a29d4c323657`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 354.2 KB (354235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a92619366e6a3a11a68e9f024a2eab53804a692c6462d1c136234636155463`  
		Last Modified: Fri, 27 Oct 2017 03:19:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e39a0966d39c1b719d4756f49b79033e98c3b8b638ec97bdc46007cfb5581f`  
		Last Modified: Tue, 09 Jan 2018 04:23:27 GMT  
		Size: 16.5 MB (16546561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:a25e6ef7ba703e37b98a432b2fc98c501f92e3171ca716585c40d7ead44f0bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:latest` - linux; amd64

```console
$ docker pull irssi@sha256:2054656664028315a7941bf390024e3e5353186a019875cf83a9eb5514c62686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98117031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79c42d136e0fe346eea2fd2eaeee9caa79192cd7a8be0ab0d955b8edb985d96`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:52:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:52:05 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 04:52:06 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 04:52:07 GMT
ENV LANG=C.UTF-8
# Mon, 08 Jan 2018 22:50:27 GMT
ENV IRSSI_VERSION=1.0.6
# Mon, 08 Jan 2018 22:51:30 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 08 Jan 2018 22:51:30 GMT
WORKDIR /home/user
# Mon, 08 Jan 2018 22:51:30 GMT
USER [user]
# Mon, 08 Jan 2018 22:51:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5640d4da043d1b37a42856572024689b31e4197a588084c18bd30cf1025c04b8`  
		Last Modified: Tue, 12 Dec 2017 04:53:43 GMT  
		Size: 33.0 MB (33032488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605b81dbad790ac85a07aa7b1a70d5a45eecbac5952ebeb816108c6e1ac2b50d`  
		Last Modified: Tue, 12 Dec 2017 04:53:38 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc2010fc6a614b1fac93de3d1c5570fd1e164bc1aa2e59400a4de47c351aa30`  
		Last Modified: Mon, 08 Jan 2018 22:53:22 GMT  
		Size: 12.5 MB (12480421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:a4bd9443b7cd5045b7ea9a410c97ca38f328b5df634ab99d3826959237114010
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97425399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8b4125e7eaa0926a248af2b7a0a45a2d1dc05a1a098a35854475eae425dd63`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:03:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:03:52 GMT
ENV HOME=/home/user
# Tue, 12 Dec 2017 03:04:10 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 12 Dec 2017 03:04:13 GMT
ENV LANG=C.UTF-8
# Tue, 09 Jan 2018 04:17:22 GMT
ENV IRSSI_VERSION=1.0.6
# Tue, 09 Jan 2018 04:20:52 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 04:20:53 GMT
WORKDIR /home/user
# Tue, 09 Jan 2018 04:20:54 GMT
USER [user]
# Tue, 09 Jan 2018 04:20:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e8d82db80031a3c015bb815276bc4c70c00daf15447d317795c80ca3e8945f`  
		Last Modified: Tue, 12 Dec 2017 03:12:49 GMT  
		Size: 32.9 MB (32864458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9462db20094b98eecbac6419dfd3cf1a055ad3843987b472809250fb1e81704`  
		Last Modified: Tue, 12 Dec 2017 03:12:40 GMT  
		Size: 4.5 KB (4474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdef0ed94e6051b21cb7f907290cd1a1b42a573d83d21c000dd25073a54fac2c`  
		Last Modified: Tue, 09 Jan 2018 04:22:56 GMT  
		Size: 12.7 MB (12747468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
