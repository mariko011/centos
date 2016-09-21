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
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8`

```console
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0`

```console
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-debian`

```console
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-debian`

```console
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-debian`

```console
$ docker pull irssi@sha256:3908d84ad0e167ef9207e8c307222eb96f974bb88c3d44218a564699cc3ef616
```

-	Platforms:
	-	linux; amd64

### `irssi:0-debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95689592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e0b668743caa97e1af8e65601674a7c5f15be26021a066b034df30b8a549ec`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:47:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:47:53 GMT
ENV HOME=/home/user
# Tue, 30 Aug 2016 21:47:54 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 Aug 2016 21:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:47:54 GMT
ENV IRSSI_VERSION=0.8.19
# Tue, 30 Aug 2016 21:48:48 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:48:48 GMT
WORKDIR /home/user
# Tue, 30 Aug 2016 21:48:48 GMT
VOLUME [/home/user/.irssi]
# Tue, 30 Aug 2016 21:48:48 GMT
USER [user]
# Tue, 30 Aug 2016 21:48:49 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759d8faeb4a788a4b4ba85c565ec05ad9cb9cc46861fc3ebd137b73099a21333`  
		Last Modified: Thu, 08 Sep 2016 17:43:07 GMT  
		Size: 32.3 MB (32256333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6189b491e4ba76822bd03867805993a8c11899920924393fd0d492dfc52cf9d`  
		Last Modified: Thu, 08 Sep 2016 17:42:55 GMT  
		Size: 4.4 KB (4356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250b9202a72b3dfceb27c8a656b7af66cf8faf4cc1b2459feccbd36cf5694e97`  
		Last Modified: Thu, 08 Sep 2016 17:43:02 GMT  
		Size: 12.1 MB (12061635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:debian`

```console
$ docker pull irssi@sha256:a8d4629f21e35e5ecfae46ffd174a54055fd8c2262b4d951ed8727643f0f7e5c
```

-	Platforms:
	-	linux; amd64

### `irssi:debian` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eef25dd25b24284a279bd6c5cb47a6861f69c848431791bbcd6d549fc17c5d`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:02:51 GMT
ENV HOME=/home/user
# Mon, 19 Sep 2016 20:02:52 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 19 Sep 2016 20:02:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 20:59:12 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:05 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Sep 2016 21:00:05 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:05 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:05 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bd074844b117f8ab09a32fc7ea7f221c619ac144211b80ee2726b4874290a`  
		Last Modified: Wed, 21 Sep 2016 21:01:10 GMT  
		Size: 32.3 MB (32256405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f71073b7f3962249e643e1e08bab6e397930fa24fc9d0c89379d127a3339ce`  
		Last Modified: Wed, 21 Sep 2016 21:00:59 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8220c8a2d444012485da83d840f2aa25278f2e36d8bfcf0ab595eb99dfe8fe`  
		Last Modified: Wed, 21 Sep 2016 21:01:05 GMT  
		Size: 12.1 MB (12072434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8.20-alpine`

```console
$ docker pull irssi@sha256:ef0dec13c48b0c07cea7c49d88079d0360c4fa72eb4154c491e70812f0c51529
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8.20-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19489176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854156801ac5610f81c167d6e64f2207bd4a0938fd63820e3e714a349a9ad7ac`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:15 GMT
ADD file:c1fdde43e049706a06a5089f91595f2a0d621c52bb5a5bf9fa859bdfb536542a in / 
# Tue, 20 Sep 2016 00:17:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 20 Sep 2016 00:17:45 GMT
ENV HOME=/home/user
# Tue, 20 Sep 2016 00:17:46 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 20 Sep 2016 00:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 21:00:07 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 21 Sep 2016 21:00:50 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:51 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:51 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:fe8532f07c3629ec9d74eb687d93a25e514ab1d4ddfd02d043570a80b3035741`  
		Last Modified: Mon, 19 Sep 2016 23:25:05 GMT  
		Size: 2.3 MB (2320389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166a8aa1298bf282904d092c4885884c11d28bd2f7e90777f70c8b417a84f077`  
		Last Modified: Tue, 20 Sep 2016 00:19:17 GMT  
		Size: 566.3 KB (566321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1212d241be008fd9a0a2137f4a7d5464cb8b134323618285df68570be773f6e`  
		Last Modified: Tue, 20 Sep 2016 00:19:15 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7044eb2dc0e803285e70d0706863040ee9fabc6afe38ac9858eccbe9d8883c`  
		Last Modified: Wed, 21 Sep 2016 21:02:32 GMT  
		Size: 16.6 MB (16601201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0.8-alpine`

```console
$ docker pull irssi@sha256:ef0dec13c48b0c07cea7c49d88079d0360c4fa72eb4154c491e70812f0c51529
```

-	Platforms:
	-	linux; amd64

### `irssi:0.8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19489176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854156801ac5610f81c167d6e64f2207bd4a0938fd63820e3e714a349a9ad7ac`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:15 GMT
ADD file:c1fdde43e049706a06a5089f91595f2a0d621c52bb5a5bf9fa859bdfb536542a in / 
# Tue, 20 Sep 2016 00:17:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 20 Sep 2016 00:17:45 GMT
ENV HOME=/home/user
# Tue, 20 Sep 2016 00:17:46 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 20 Sep 2016 00:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 21:00:07 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 21 Sep 2016 21:00:50 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:51 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:51 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:fe8532f07c3629ec9d74eb687d93a25e514ab1d4ddfd02d043570a80b3035741`  
		Last Modified: Mon, 19 Sep 2016 23:25:05 GMT  
		Size: 2.3 MB (2320389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166a8aa1298bf282904d092c4885884c11d28bd2f7e90777f70c8b417a84f077`  
		Last Modified: Tue, 20 Sep 2016 00:19:17 GMT  
		Size: 566.3 KB (566321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1212d241be008fd9a0a2137f4a7d5464cb8b134323618285df68570be773f6e`  
		Last Modified: Tue, 20 Sep 2016 00:19:15 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7044eb2dc0e803285e70d0706863040ee9fabc6afe38ac9858eccbe9d8883c`  
		Last Modified: Wed, 21 Sep 2016 21:02:32 GMT  
		Size: 16.6 MB (16601201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:ef0dec13c48b0c07cea7c49d88079d0360c4fa72eb4154c491e70812f0c51529
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19489176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854156801ac5610f81c167d6e64f2207bd4a0938fd63820e3e714a349a9ad7ac`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:15 GMT
ADD file:c1fdde43e049706a06a5089f91595f2a0d621c52bb5a5bf9fa859bdfb536542a in / 
# Tue, 20 Sep 2016 00:17:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 20 Sep 2016 00:17:45 GMT
ENV HOME=/home/user
# Tue, 20 Sep 2016 00:17:46 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 20 Sep 2016 00:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 21:00:07 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 21 Sep 2016 21:00:50 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:51 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:51 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:fe8532f07c3629ec9d74eb687d93a25e514ab1d4ddfd02d043570a80b3035741`  
		Last Modified: Mon, 19 Sep 2016 23:25:05 GMT  
		Size: 2.3 MB (2320389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166a8aa1298bf282904d092c4885884c11d28bd2f7e90777f70c8b417a84f077`  
		Last Modified: Tue, 20 Sep 2016 00:19:17 GMT  
		Size: 566.3 KB (566321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1212d241be008fd9a0a2137f4a7d5464cb8b134323618285df68570be773f6e`  
		Last Modified: Tue, 20 Sep 2016 00:19:15 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7044eb2dc0e803285e70d0706863040ee9fabc6afe38ac9858eccbe9d8883c`  
		Last Modified: Wed, 21 Sep 2016 21:02:32 GMT  
		Size: 16.6 MB (16601201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:ef0dec13c48b0c07cea7c49d88079d0360c4fa72eb4154c491e70812f0c51529
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19489176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854156801ac5610f81c167d6e64f2207bd4a0938fd63820e3e714a349a9ad7ac`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:15 GMT
ADD file:c1fdde43e049706a06a5089f91595f2a0d621c52bb5a5bf9fa859bdfb536542a in / 
# Tue, 20 Sep 2016 00:17:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 20 Sep 2016 00:17:45 GMT
ENV HOME=/home/user
# Tue, 20 Sep 2016 00:17:46 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 20 Sep 2016 00:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 21:00:07 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 21 Sep 2016 21:00:50 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:51 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:51 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:fe8532f07c3629ec9d74eb687d93a25e514ab1d4ddfd02d043570a80b3035741`  
		Last Modified: Mon, 19 Sep 2016 23:25:05 GMT  
		Size: 2.3 MB (2320389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166a8aa1298bf282904d092c4885884c11d28bd2f7e90777f70c8b417a84f077`  
		Last Modified: Tue, 20 Sep 2016 00:19:17 GMT  
		Size: 566.3 KB (566321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1212d241be008fd9a0a2137f4a7d5464cb8b134323618285df68570be773f6e`  
		Last Modified: Tue, 20 Sep 2016 00:19:15 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7044eb2dc0e803285e70d0706863040ee9fabc6afe38ac9858eccbe9d8883c`  
		Last Modified: Wed, 21 Sep 2016 21:02:32 GMT  
		Size: 16.6 MB (16601201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
