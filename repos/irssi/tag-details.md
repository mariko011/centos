<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1`](#irssi1)
-	[`irssi:1.0`](#irssi10)
-	[`irssi:1.0.4`](#irssi104)
-	[`irssi:1.0.4-alpine`](#irssi104-alpine)
-	[`irssi:1.0-alpine`](#irssi10-alpine)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:alpine`](#irssialpine)
-	[`irssi:latest`](#irssilatest)

## `irssi:1`

```console
$ docker pull irssi@sha256:ee96c824a4f922d005685b53ebfa9b72494f987eb35767c88ff4400f441f4b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1` - linux; amd64

```console
$ docker pull irssi@sha256:a1566d192dec105344b6653ca9070365f0d3129d37567f3a7974202c399a596b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98089608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9cfd7140e497de6ccbd2129e26c8ae12d31957f73fd08ab6d63d2123001b3e`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 10:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:47:45 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:47:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:47:46 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:47:46 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:48:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 10:48:58 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:48:58 GMT
USER [user]
# Wed, 13 Sep 2017 10:48:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c25749ee26e5aeb09cb132314ab329d25603bc618635f0e60b743a157795c33`  
		Last Modified: Wed, 13 Sep 2017 10:50:09 GMT  
		Size: 33.0 MB (33032271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6441e19c02d4ccdbc370e0d1f5f268afe0ac54048868657ac3199352739244f2`  
		Last Modified: Wed, 13 Sep 2017 10:50:03 GMT  
		Size: 4.4 KB (4430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8a8826dd93eef748156793f06b831b001765f331b8ea2a85007e50f5a733bf`  
		Last Modified: Wed, 13 Sep 2017 10:50:07 GMT  
		Size: 12.5 MB (12457360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:5bd2913c1b93b56ebc361731c4bedc5437817a4f1284c5c64eacadd847e25a06
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94368866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c517e7bb8446b8c66df0df71a9422ee4bfbb3cb8833735f8d043a45853b31e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 22:44:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:44:34 GMT
ENV HOME=/home/user
# Mon, 11 Sep 2017 22:44:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 11 Sep 2017 22:44:42 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 22:44:43 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 11 Sep 2017 23:00:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 23:00:56 GMT
WORKDIR /home/user
# Mon, 11 Sep 2017 23:00:57 GMT
USER [user]
# Mon, 11 Sep 2017 23:00:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957a4d56d14164bcb0da061ebc34981baaad11d15ca47151a35fe57f465901c3`  
		Last Modified: Mon, 11 Sep 2017 23:02:11 GMT  
		Size: 31.7 MB (31708239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b6e884772985a25a6be661598dd276d5824e5ad2bea7d2a9730662fb3fbe0`  
		Last Modified: Mon, 11 Sep 2017 23:01:43 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511393c058bfcc5ebc3d9cc87e39ab6e1b34f5694a62efb1e1575a93f1bd59ed`  
		Last Modified: Mon, 11 Sep 2017 23:01:58 GMT  
		Size: 11.8 MB (11778720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:b4ef0b404bca665248d313f813220f9a17ea914f436bdd5edb505f3967c47a80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91459264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386369e547d4cfbc9d435a26676600996687799503e9576600dc699f0009b816`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 23:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:55 GMT
ENV HOME=/home/user
# Mon, 18 Sep 2017 23:33:59 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 18 Sep 2017 23:33:59 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:34:00 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 18 Sep 2017 23:40:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Sep 2017 23:40:45 GMT
WORKDIR /home/user
# Mon, 18 Sep 2017 23:40:46 GMT
USER [user]
# Mon, 18 Sep 2017 23:40:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70dbf44f9a4730ee26300d3c2c13886f58ed449c74d5b2cf7af7e3ff6af21de`  
		Last Modified: Mon, 18 Sep 2017 23:41:45 GMT  
		Size: 31.2 MB (31249032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102546cd8c6fae3cd755d6fe7913a3cc5f664237ca74590c49f6feee9a051b67`  
		Last Modified: Mon, 18 Sep 2017 23:41:25 GMT  
		Size: 4.4 KB (4436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f073efea8b6b4f0d7415975f35c576b0548c478f71f7bc32f954eae2f12a1`  
		Last Modified: Mon, 18 Sep 2017 23:41:32 GMT  
		Size: 11.5 MB (11523720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:7ecb3037d2fe101417f7db379eb05122713c70b4c5a6dee27b67d0a771889b32
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83aeb8233850d8538967b9dcf697fabd29ea61aef969a650bf6c6b329fd3a73`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:22:04 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 21:22:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 21:22:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 21:22:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 21:26:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:26:46 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 21:26:47 GMT
USER [user]
# Fri, 08 Sep 2017 21:26:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c7ef9e56709bbe02312f2b2f05a5f11a54eb1ec1c13a0f8893689bb515697`  
		Last Modified: Fri, 08 Sep 2017 21:27:36 GMT  
		Size: 31.9 MB (31884490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bbf8ccbe80efe92b1998cbbd092f4c534d8f872e9a2a94c8460581f43a063e`  
		Last Modified: Fri, 08 Sep 2017 21:27:10 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dbd55fd568d780b1349d03e8aae8301402731792b8adf0a6d6eca0ad50f68b`  
		Last Modified: Fri, 08 Sep 2017 21:27:22 GMT  
		Size: 12.0 MB (12043831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:39f9580f616608bfe6461eac5468fa81e11adcd270fce94d250d38ea4118ba00
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d090e79c8b6e0b3362cab798ee27aeb318f72383e2d3b6b184538ba4f2a78c22`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:44:28 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 14:44:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 14:44:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 14:44:29 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 14:47:06 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:47:07 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 14:47:07 GMT
USER [user]
# Fri, 08 Sep 2017 14:47:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea5e5916c2c2e5ee21a45868654a7657e290124316b0102fe8bd1168157726d`  
		Last Modified: Fri, 08 Sep 2017 14:48:26 GMT  
		Size: 34.7 MB (34729510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb001c6294aa6446111dff9c41f55ac9db1cbb5a23f23688e03a5ad3a9a61fa`  
		Last Modified: Fri, 08 Sep 2017 14:48:17 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1e5dc73154c8b6d49188d561f8a48afa624e118d79dc8d2dda9d672a6c93e4`  
		Last Modified: Fri, 08 Sep 2017 14:48:22 GMT  
		Size: 14.5 MB (14450335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0fd830e39a0af128577f8fbbef982aed3435a1efa1a0b6be6e5b9464bf2b097
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267d67fb143214dd38b8bf4e0450a9ebcebbbe9d1bf25c69842c27127057b46a`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:17:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:17:01 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 01:17:01 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 01:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:17:02 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 01:18:02 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:18:02 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 01:18:02 GMT
USER [user]
# Fri, 08 Sep 2017 01:18:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b676e9b8213dc21a5ff4d2f5382386559bee357259e5032e9d72316ba5d17be7`  
		Last Modified: Fri, 08 Sep 2017 01:18:20 GMT  
		Size: 32.9 MB (32862966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287a91c6a95cfe46f948ffd5a719ed21b8fe09bbfaa555fe0ee169527d815eae`  
		Last Modified: Fri, 08 Sep 2017 01:18:10 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a24ae4c938737866051a97c325121a3f37fe1c6459e7b289f96ba5dc219cfd2`  
		Last Modified: Fri, 08 Sep 2017 01:18:15 GMT  
		Size: 12.7 MB (12724938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:68e1320646637966c67a026495ff617f412a24a5d8aca68a2c09b76044e29117
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98792373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02758d4c956f8d504e31e114eceb48a8af038537f73916e5ac68c5f0657147e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:43:44 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 05:43:44 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 05:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:43:45 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 05:44:35 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:44:35 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 05:44:35 GMT
USER [user]
# Fri, 08 Sep 2017 05:44:35 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eafb3802fb5850da75355184a0e22a0fb13d51f6c1cf1c8bfa8b95f50b3a1b`  
		Last Modified: Fri, 08 Sep 2017 05:44:58 GMT  
		Size: 33.5 MB (33544527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703e0009ec36e4a53d6f2c9c4bf6bace2564dd722d8e531fb2891b413fe5e2c7`  
		Last Modified: Fri, 08 Sep 2017 05:44:51 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81191a41e6bb93b8d8f0d0093574b435a5a10b291a00840f4330f9b44b35f42e`  
		Last Modified: Fri, 08 Sep 2017 05:44:53 GMT  
		Size: 12.5 MB (12454616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0`

```console
$ docker pull irssi@sha256:ee96c824a4f922d005685b53ebfa9b72494f987eb35767c88ff4400f441f4b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.0` - linux; amd64

```console
$ docker pull irssi@sha256:a1566d192dec105344b6653ca9070365f0d3129d37567f3a7974202c399a596b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98089608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9cfd7140e497de6ccbd2129e26c8ae12d31957f73fd08ab6d63d2123001b3e`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 10:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:47:45 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:47:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:47:46 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:47:46 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:48:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 10:48:58 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:48:58 GMT
USER [user]
# Wed, 13 Sep 2017 10:48:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c25749ee26e5aeb09cb132314ab329d25603bc618635f0e60b743a157795c33`  
		Last Modified: Wed, 13 Sep 2017 10:50:09 GMT  
		Size: 33.0 MB (33032271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6441e19c02d4ccdbc370e0d1f5f268afe0ac54048868657ac3199352739244f2`  
		Last Modified: Wed, 13 Sep 2017 10:50:03 GMT  
		Size: 4.4 KB (4430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8a8826dd93eef748156793f06b831b001765f331b8ea2a85007e50f5a733bf`  
		Last Modified: Wed, 13 Sep 2017 10:50:07 GMT  
		Size: 12.5 MB (12457360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; arm variant v5

```console
$ docker pull irssi@sha256:5bd2913c1b93b56ebc361731c4bedc5437817a4f1284c5c64eacadd847e25a06
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94368866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c517e7bb8446b8c66df0df71a9422ee4bfbb3cb8833735f8d043a45853b31e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 22:44:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:44:34 GMT
ENV HOME=/home/user
# Mon, 11 Sep 2017 22:44:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 11 Sep 2017 22:44:42 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 22:44:43 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 11 Sep 2017 23:00:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 23:00:56 GMT
WORKDIR /home/user
# Mon, 11 Sep 2017 23:00:57 GMT
USER [user]
# Mon, 11 Sep 2017 23:00:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957a4d56d14164bcb0da061ebc34981baaad11d15ca47151a35fe57f465901c3`  
		Last Modified: Mon, 11 Sep 2017 23:02:11 GMT  
		Size: 31.7 MB (31708239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b6e884772985a25a6be661598dd276d5824e5ad2bea7d2a9730662fb3fbe0`  
		Last Modified: Mon, 11 Sep 2017 23:01:43 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511393c058bfcc5ebc3d9cc87e39ab6e1b34f5694a62efb1e1575a93f1bd59ed`  
		Last Modified: Mon, 11 Sep 2017 23:01:58 GMT  
		Size: 11.8 MB (11778720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; arm variant v7

```console
$ docker pull irssi@sha256:b4ef0b404bca665248d313f813220f9a17ea914f436bdd5edb505f3967c47a80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91459264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386369e547d4cfbc9d435a26676600996687799503e9576600dc699f0009b816`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 23:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:55 GMT
ENV HOME=/home/user
# Mon, 18 Sep 2017 23:33:59 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 18 Sep 2017 23:33:59 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:34:00 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 18 Sep 2017 23:40:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Sep 2017 23:40:45 GMT
WORKDIR /home/user
# Mon, 18 Sep 2017 23:40:46 GMT
USER [user]
# Mon, 18 Sep 2017 23:40:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70dbf44f9a4730ee26300d3c2c13886f58ed449c74d5b2cf7af7e3ff6af21de`  
		Last Modified: Mon, 18 Sep 2017 23:41:45 GMT  
		Size: 31.2 MB (31249032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102546cd8c6fae3cd755d6fe7913a3cc5f664237ca74590c49f6feee9a051b67`  
		Last Modified: Mon, 18 Sep 2017 23:41:25 GMT  
		Size: 4.4 KB (4436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f073efea8b6b4f0d7415975f35c576b0548c478f71f7bc32f954eae2f12a1`  
		Last Modified: Mon, 18 Sep 2017 23:41:32 GMT  
		Size: 11.5 MB (11523720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:7ecb3037d2fe101417f7db379eb05122713c70b4c5a6dee27b67d0a771889b32
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83aeb8233850d8538967b9dcf697fabd29ea61aef969a650bf6c6b329fd3a73`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:22:04 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 21:22:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 21:22:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 21:22:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 21:26:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:26:46 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 21:26:47 GMT
USER [user]
# Fri, 08 Sep 2017 21:26:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c7ef9e56709bbe02312f2b2f05a5f11a54eb1ec1c13a0f8893689bb515697`  
		Last Modified: Fri, 08 Sep 2017 21:27:36 GMT  
		Size: 31.9 MB (31884490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bbf8ccbe80efe92b1998cbbd092f4c534d8f872e9a2a94c8460581f43a063e`  
		Last Modified: Fri, 08 Sep 2017 21:27:10 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dbd55fd568d780b1349d03e8aae8301402731792b8adf0a6d6eca0ad50f68b`  
		Last Modified: Fri, 08 Sep 2017 21:27:22 GMT  
		Size: 12.0 MB (12043831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; 386

```console
$ docker pull irssi@sha256:39f9580f616608bfe6461eac5468fa81e11adcd270fce94d250d38ea4118ba00
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d090e79c8b6e0b3362cab798ee27aeb318f72383e2d3b6b184538ba4f2a78c22`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:44:28 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 14:44:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 14:44:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 14:44:29 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 14:47:06 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:47:07 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 14:47:07 GMT
USER [user]
# Fri, 08 Sep 2017 14:47:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea5e5916c2c2e5ee21a45868654a7657e290124316b0102fe8bd1168157726d`  
		Last Modified: Fri, 08 Sep 2017 14:48:26 GMT  
		Size: 34.7 MB (34729510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb001c6294aa6446111dff9c41f55ac9db1cbb5a23f23688e03a5ad3a9a61fa`  
		Last Modified: Fri, 08 Sep 2017 14:48:17 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1e5dc73154c8b6d49188d561f8a48afa624e118d79dc8d2dda9d672a6c93e4`  
		Last Modified: Fri, 08 Sep 2017 14:48:22 GMT  
		Size: 14.5 MB (14450335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0fd830e39a0af128577f8fbbef982aed3435a1efa1a0b6be6e5b9464bf2b097
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267d67fb143214dd38b8bf4e0450a9ebcebbbe9d1bf25c69842c27127057b46a`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:17:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:17:01 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 01:17:01 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 01:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:17:02 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 01:18:02 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:18:02 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 01:18:02 GMT
USER [user]
# Fri, 08 Sep 2017 01:18:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b676e9b8213dc21a5ff4d2f5382386559bee357259e5032e9d72316ba5d17be7`  
		Last Modified: Fri, 08 Sep 2017 01:18:20 GMT  
		Size: 32.9 MB (32862966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287a91c6a95cfe46f948ffd5a719ed21b8fe09bbfaa555fe0ee169527d815eae`  
		Last Modified: Fri, 08 Sep 2017 01:18:10 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a24ae4c938737866051a97c325121a3f37fe1c6459e7b289f96ba5dc219cfd2`  
		Last Modified: Fri, 08 Sep 2017 01:18:15 GMT  
		Size: 12.7 MB (12724938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0` - linux; s390x

```console
$ docker pull irssi@sha256:68e1320646637966c67a026495ff617f412a24a5d8aca68a2c09b76044e29117
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98792373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02758d4c956f8d504e31e114eceb48a8af038537f73916e5ac68c5f0657147e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:43:44 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 05:43:44 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 05:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:43:45 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 05:44:35 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:44:35 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 05:44:35 GMT
USER [user]
# Fri, 08 Sep 2017 05:44:35 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eafb3802fb5850da75355184a0e22a0fb13d51f6c1cf1c8bfa8b95f50b3a1b`  
		Last Modified: Fri, 08 Sep 2017 05:44:58 GMT  
		Size: 33.5 MB (33544527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703e0009ec36e4a53d6f2c9c4bf6bace2564dd722d8e531fb2891b413fe5e2c7`  
		Last Modified: Fri, 08 Sep 2017 05:44:51 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81191a41e6bb93b8d8f0d0093574b435a5a10b291a00840f4330f9b44b35f42e`  
		Last Modified: Fri, 08 Sep 2017 05:44:53 GMT  
		Size: 12.5 MB (12454616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.4`

```console
$ docker pull irssi@sha256:ee96c824a4f922d005685b53ebfa9b72494f987eb35767c88ff4400f441f4b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1.0.4` - linux; amd64

```console
$ docker pull irssi@sha256:a1566d192dec105344b6653ca9070365f0d3129d37567f3a7974202c399a596b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98089608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9cfd7140e497de6ccbd2129e26c8ae12d31957f73fd08ab6d63d2123001b3e`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 10:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:47:45 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:47:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:47:46 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:47:46 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:48:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 10:48:58 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:48:58 GMT
USER [user]
# Wed, 13 Sep 2017 10:48:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c25749ee26e5aeb09cb132314ab329d25603bc618635f0e60b743a157795c33`  
		Last Modified: Wed, 13 Sep 2017 10:50:09 GMT  
		Size: 33.0 MB (33032271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6441e19c02d4ccdbc370e0d1f5f268afe0ac54048868657ac3199352739244f2`  
		Last Modified: Wed, 13 Sep 2017 10:50:03 GMT  
		Size: 4.4 KB (4430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8a8826dd93eef748156793f06b831b001765f331b8ea2a85007e50f5a733bf`  
		Last Modified: Wed, 13 Sep 2017 10:50:07 GMT  
		Size: 12.5 MB (12457360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.4` - linux; arm variant v5

```console
$ docker pull irssi@sha256:5bd2913c1b93b56ebc361731c4bedc5437817a4f1284c5c64eacadd847e25a06
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94368866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c517e7bb8446b8c66df0df71a9422ee4bfbb3cb8833735f8d043a45853b31e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 22:44:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:44:34 GMT
ENV HOME=/home/user
# Mon, 11 Sep 2017 22:44:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 11 Sep 2017 22:44:42 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 22:44:43 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 11 Sep 2017 23:00:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 23:00:56 GMT
WORKDIR /home/user
# Mon, 11 Sep 2017 23:00:57 GMT
USER [user]
# Mon, 11 Sep 2017 23:00:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957a4d56d14164bcb0da061ebc34981baaad11d15ca47151a35fe57f465901c3`  
		Last Modified: Mon, 11 Sep 2017 23:02:11 GMT  
		Size: 31.7 MB (31708239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b6e884772985a25a6be661598dd276d5824e5ad2bea7d2a9730662fb3fbe0`  
		Last Modified: Mon, 11 Sep 2017 23:01:43 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511393c058bfcc5ebc3d9cc87e39ab6e1b34f5694a62efb1e1575a93f1bd59ed`  
		Last Modified: Mon, 11 Sep 2017 23:01:58 GMT  
		Size: 11.8 MB (11778720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.4` - linux; arm variant v7

```console
$ docker pull irssi@sha256:b4ef0b404bca665248d313f813220f9a17ea914f436bdd5edb505f3967c47a80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91459264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386369e547d4cfbc9d435a26676600996687799503e9576600dc699f0009b816`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 23:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:55 GMT
ENV HOME=/home/user
# Mon, 18 Sep 2017 23:33:59 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 18 Sep 2017 23:33:59 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:34:00 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 18 Sep 2017 23:40:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Sep 2017 23:40:45 GMT
WORKDIR /home/user
# Mon, 18 Sep 2017 23:40:46 GMT
USER [user]
# Mon, 18 Sep 2017 23:40:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70dbf44f9a4730ee26300d3c2c13886f58ed449c74d5b2cf7af7e3ff6af21de`  
		Last Modified: Mon, 18 Sep 2017 23:41:45 GMT  
		Size: 31.2 MB (31249032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102546cd8c6fae3cd755d6fe7913a3cc5f664237ca74590c49f6feee9a051b67`  
		Last Modified: Mon, 18 Sep 2017 23:41:25 GMT  
		Size: 4.4 KB (4436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f073efea8b6b4f0d7415975f35c576b0548c478f71f7bc32f954eae2f12a1`  
		Last Modified: Mon, 18 Sep 2017 23:41:32 GMT  
		Size: 11.5 MB (11523720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:7ecb3037d2fe101417f7db379eb05122713c70b4c5a6dee27b67d0a771889b32
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83aeb8233850d8538967b9dcf697fabd29ea61aef969a650bf6c6b329fd3a73`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:22:04 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 21:22:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 21:22:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 21:22:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 21:26:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:26:46 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 21:26:47 GMT
USER [user]
# Fri, 08 Sep 2017 21:26:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c7ef9e56709bbe02312f2b2f05a5f11a54eb1ec1c13a0f8893689bb515697`  
		Last Modified: Fri, 08 Sep 2017 21:27:36 GMT  
		Size: 31.9 MB (31884490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bbf8ccbe80efe92b1998cbbd092f4c534d8f872e9a2a94c8460581f43a063e`  
		Last Modified: Fri, 08 Sep 2017 21:27:10 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dbd55fd568d780b1349d03e8aae8301402731792b8adf0a6d6eca0ad50f68b`  
		Last Modified: Fri, 08 Sep 2017 21:27:22 GMT  
		Size: 12.0 MB (12043831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.4` - linux; 386

```console
$ docker pull irssi@sha256:39f9580f616608bfe6461eac5468fa81e11adcd270fce94d250d38ea4118ba00
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d090e79c8b6e0b3362cab798ee27aeb318f72383e2d3b6b184538ba4f2a78c22`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:44:28 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 14:44:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 14:44:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 14:44:29 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 14:47:06 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:47:07 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 14:47:07 GMT
USER [user]
# Fri, 08 Sep 2017 14:47:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea5e5916c2c2e5ee21a45868654a7657e290124316b0102fe8bd1168157726d`  
		Last Modified: Fri, 08 Sep 2017 14:48:26 GMT  
		Size: 34.7 MB (34729510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb001c6294aa6446111dff9c41f55ac9db1cbb5a23f23688e03a5ad3a9a61fa`  
		Last Modified: Fri, 08 Sep 2017 14:48:17 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1e5dc73154c8b6d49188d561f8a48afa624e118d79dc8d2dda9d672a6c93e4`  
		Last Modified: Fri, 08 Sep 2017 14:48:22 GMT  
		Size: 14.5 MB (14450335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0fd830e39a0af128577f8fbbef982aed3435a1efa1a0b6be6e5b9464bf2b097
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267d67fb143214dd38b8bf4e0450a9ebcebbbe9d1bf25c69842c27127057b46a`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:17:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:17:01 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 01:17:01 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 01:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:17:02 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 01:18:02 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:18:02 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 01:18:02 GMT
USER [user]
# Fri, 08 Sep 2017 01:18:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b676e9b8213dc21a5ff4d2f5382386559bee357259e5032e9d72316ba5d17be7`  
		Last Modified: Fri, 08 Sep 2017 01:18:20 GMT  
		Size: 32.9 MB (32862966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287a91c6a95cfe46f948ffd5a719ed21b8fe09bbfaa555fe0ee169527d815eae`  
		Last Modified: Fri, 08 Sep 2017 01:18:10 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a24ae4c938737866051a97c325121a3f37fe1c6459e7b289f96ba5dc219cfd2`  
		Last Modified: Fri, 08 Sep 2017 01:18:15 GMT  
		Size: 12.7 MB (12724938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1.0.4` - linux; s390x

```console
$ docker pull irssi@sha256:68e1320646637966c67a026495ff617f412a24a5d8aca68a2c09b76044e29117
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98792373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02758d4c956f8d504e31e114eceb48a8af038537f73916e5ac68c5f0657147e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:43:44 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 05:43:44 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 05:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:43:45 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 05:44:35 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:44:35 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 05:44:35 GMT
USER [user]
# Fri, 08 Sep 2017 05:44:35 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eafb3802fb5850da75355184a0e22a0fb13d51f6c1cf1c8bfa8b95f50b3a1b`  
		Last Modified: Fri, 08 Sep 2017 05:44:58 GMT  
		Size: 33.5 MB (33544527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703e0009ec36e4a53d6f2c9c4bf6bace2564dd722d8e531fb2891b413fe5e2c7`  
		Last Modified: Fri, 08 Sep 2017 05:44:51 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81191a41e6bb93b8d8f0d0093574b435a5a10b291a00840f4330f9b44b35f42e`  
		Last Modified: Fri, 08 Sep 2017 05:44:53 GMT  
		Size: 12.5 MB (12454616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0.4-alpine`

```console
$ docker pull irssi@sha256:1b4e62ddc77e77f4384bd89c3b05634eea6562df73df3fa0b5f7a6f66a5ccfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.0.4-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:52747188d0fa7d52e9e85091f7d42f9f8b173dadad3902cde0e4e485d3e12bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19140409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805a985cf5a1a9631e3c38bc7156a8387dd7f7cc5c670f1a6e0c99ee90b24e3c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 10:49:03 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 13 Sep 2017 10:49:03 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:49:03 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:49:04 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:49:04 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Sep 2017 10:49:50 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:49:50 GMT
USER [user]
# Wed, 13 Sep 2017 10:49:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcb161abf7afb112d65a712b97dad3c340cffa73a3deecddbbfa128e3fd62be`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a361e2dd2a88ac14876ff8751a8c879b967a251c7ee72f268f590a5177bfc02`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2cdab6b251fbabf5e14a57d66909332be7f93c4214653400eb31abe4b2e75`  
		Last Modified: Wed, 13 Sep 2017 10:50:32 GMT  
		Size: 16.8 MB (16797390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1.0-alpine`

```console
$ docker pull irssi@sha256:1b4e62ddc77e77f4384bd89c3b05634eea6562df73df3fa0b5f7a6f66a5ccfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1.0-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:52747188d0fa7d52e9e85091f7d42f9f8b173dadad3902cde0e4e485d3e12bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19140409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805a985cf5a1a9631e3c38bc7156a8387dd7f7cc5c670f1a6e0c99ee90b24e3c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 10:49:03 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 13 Sep 2017 10:49:03 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:49:03 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:49:04 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:49:04 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Sep 2017 10:49:50 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:49:50 GMT
USER [user]
# Wed, 13 Sep 2017 10:49:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcb161abf7afb112d65a712b97dad3c340cffa73a3deecddbbfa128e3fd62be`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a361e2dd2a88ac14876ff8751a8c879b967a251c7ee72f268f590a5177bfc02`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2cdab6b251fbabf5e14a57d66909332be7f93c4214653400eb31abe4b2e75`  
		Last Modified: Wed, 13 Sep 2017 10:50:32 GMT  
		Size: 16.8 MB (16797390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:1b4e62ddc77e77f4384bd89c3b05634eea6562df73df3fa0b5f7a6f66a5ccfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:52747188d0fa7d52e9e85091f7d42f9f8b173dadad3902cde0e4e485d3e12bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19140409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805a985cf5a1a9631e3c38bc7156a8387dd7f7cc5c670f1a6e0c99ee90b24e3c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 10:49:03 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 13 Sep 2017 10:49:03 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:49:03 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:49:04 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:49:04 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Sep 2017 10:49:50 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:49:50 GMT
USER [user]
# Wed, 13 Sep 2017 10:49:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcb161abf7afb112d65a712b97dad3c340cffa73a3deecddbbfa128e3fd62be`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a361e2dd2a88ac14876ff8751a8c879b967a251c7ee72f268f590a5177bfc02`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2cdab6b251fbabf5e14a57d66909332be7f93c4214653400eb31abe4b2e75`  
		Last Modified: Wed, 13 Sep 2017 10:50:32 GMT  
		Size: 16.8 MB (16797390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:alpine`

```console
$ docker pull irssi@sha256:1b4e62ddc77e77f4384bd89c3b05634eea6562df73df3fa0b5f7a6f66a5ccfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

```console
$ docker pull irssi@sha256:52747188d0fa7d52e9e85091f7d42f9f8b173dadad3902cde0e4e485d3e12bc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19140409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805a985cf5a1a9631e3c38bc7156a8387dd7f7cc5c670f1a6e0c99ee90b24e3c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 10:49:03 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 13 Sep 2017 10:49:03 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:49:03 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:49:04 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:49:04 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:49:49 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Sep 2017 10:49:50 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:49:50 GMT
USER [user]
# Wed, 13 Sep 2017 10:49:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcb161abf7afb112d65a712b97dad3c340cffa73a3deecddbbfa128e3fd62be`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a361e2dd2a88ac14876ff8751a8c879b967a251c7ee72f268f590a5177bfc02`  
		Last Modified: Wed, 13 Sep 2017 10:50:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2cdab6b251fbabf5e14a57d66909332be7f93c4214653400eb31abe4b2e75`  
		Last Modified: Wed, 13 Sep 2017 10:50:32 GMT  
		Size: 16.8 MB (16797390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `irssi:latest`

```console
$ docker pull irssi@sha256:ee96c824a4f922d005685b53ebfa9b72494f987eb35767c88ff4400f441f4b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:latest` - linux; amd64

```console
$ docker pull irssi@sha256:a1566d192dec105344b6653ca9070365f0d3129d37567f3a7974202c399a596b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98089608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9cfd7140e497de6ccbd2129e26c8ae12d31957f73fd08ab6d63d2123001b3e`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 10:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:47:45 GMT
ENV HOME=/home/user
# Wed, 13 Sep 2017 10:47:46 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 13 Sep 2017 10:47:46 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 10:47:46 GMT
ENV IRSSI_VERSION=1.0.4
# Wed, 13 Sep 2017 10:48:57 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 13 Sep 2017 10:48:58 GMT
WORKDIR /home/user
# Wed, 13 Sep 2017 10:48:58 GMT
USER [user]
# Wed, 13 Sep 2017 10:48:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c25749ee26e5aeb09cb132314ab329d25603bc618635f0e60b743a157795c33`  
		Last Modified: Wed, 13 Sep 2017 10:50:09 GMT  
		Size: 33.0 MB (33032271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6441e19c02d4ccdbc370e0d1f5f268afe0ac54048868657ac3199352739244f2`  
		Last Modified: Wed, 13 Sep 2017 10:50:03 GMT  
		Size: 4.4 KB (4430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8a8826dd93eef748156793f06b831b001765f331b8ea2a85007e50f5a733bf`  
		Last Modified: Wed, 13 Sep 2017 10:50:07 GMT  
		Size: 12.5 MB (12457360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:5bd2913c1b93b56ebc361731c4bedc5437817a4f1284c5c64eacadd847e25a06
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94368866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c517e7bb8446b8c66df0df71a9422ee4bfbb3cb8833735f8d043a45853b31e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 22:44:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:44:34 GMT
ENV HOME=/home/user
# Mon, 11 Sep 2017 22:44:41 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 11 Sep 2017 22:44:42 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 22:44:43 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 11 Sep 2017 23:00:53 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 23:00:56 GMT
WORKDIR /home/user
# Mon, 11 Sep 2017 23:00:57 GMT
USER [user]
# Mon, 11 Sep 2017 23:00:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957a4d56d14164bcb0da061ebc34981baaad11d15ca47151a35fe57f465901c3`  
		Last Modified: Mon, 11 Sep 2017 23:02:11 GMT  
		Size: 31.7 MB (31708239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b6e884772985a25a6be661598dd276d5824e5ad2bea7d2a9730662fb3fbe0`  
		Last Modified: Mon, 11 Sep 2017 23:01:43 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511393c058bfcc5ebc3d9cc87e39ab6e1b34f5694a62efb1e1575a93f1bd59ed`  
		Last Modified: Mon, 11 Sep 2017 23:01:58 GMT  
		Size: 11.8 MB (11778720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:b4ef0b404bca665248d313f813220f9a17ea914f436bdd5edb505f3967c47a80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91459264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386369e547d4cfbc9d435a26676600996687799503e9576600dc699f0009b816`
-	Default Command: `["irssi"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 23:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:55 GMT
ENV HOME=/home/user
# Mon, 18 Sep 2017 23:33:59 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Mon, 18 Sep 2017 23:33:59 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:34:00 GMT
ENV IRSSI_VERSION=1.0.4
# Mon, 18 Sep 2017 23:40:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Sep 2017 23:40:45 GMT
WORKDIR /home/user
# Mon, 18 Sep 2017 23:40:46 GMT
USER [user]
# Mon, 18 Sep 2017 23:40:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70dbf44f9a4730ee26300d3c2c13886f58ed449c74d5b2cf7af7e3ff6af21de`  
		Last Modified: Mon, 18 Sep 2017 23:41:45 GMT  
		Size: 31.2 MB (31249032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102546cd8c6fae3cd755d6fe7913a3cc5f664237ca74590c49f6feee9a051b67`  
		Last Modified: Mon, 18 Sep 2017 23:41:25 GMT  
		Size: 4.4 KB (4436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f073efea8b6b4f0d7415975f35c576b0548c478f71f7bc32f954eae2f12a1`  
		Last Modified: Mon, 18 Sep 2017 23:41:32 GMT  
		Size: 11.5 MB (11523720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:7ecb3037d2fe101417f7db379eb05122713c70b4c5a6dee27b67d0a771889b32
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93862203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83aeb8233850d8538967b9dcf697fabd29ea61aef969a650bf6c6b329fd3a73`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:22:04 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 21:22:09 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 21:22:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 21:22:12 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 21:26:44 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 21:26:46 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 21:26:47 GMT
USER [user]
# Fri, 08 Sep 2017 21:26:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c7ef9e56709bbe02312f2b2f05a5f11a54eb1ec1c13a0f8893689bb515697`  
		Last Modified: Fri, 08 Sep 2017 21:27:36 GMT  
		Size: 31.9 MB (31884490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bbf8ccbe80efe92b1998cbbd092f4c534d8f872e9a2a94c8460581f43a063e`  
		Last Modified: Fri, 08 Sep 2017 21:27:10 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dbd55fd568d780b1349d03e8aae8301402731792b8adf0a6d6eca0ad50f68b`  
		Last Modified: Fri, 08 Sep 2017 21:27:22 GMT  
		Size: 12.0 MB (12043831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:39f9580f616608bfe6461eac5468fa81e11adcd270fce94d250d38ea4118ba00
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101957384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d090e79c8b6e0b3362cab798ee27aeb318f72383e2d3b6b184538ba4f2a78c22`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 14:44:28 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 14:44:29 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 14:44:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 14:44:29 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 14:47:06 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 14:47:07 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 14:47:07 GMT
USER [user]
# Fri, 08 Sep 2017 14:47:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea5e5916c2c2e5ee21a45868654a7657e290124316b0102fe8bd1168157726d`  
		Last Modified: Fri, 08 Sep 2017 14:48:26 GMT  
		Size: 34.7 MB (34729510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb001c6294aa6446111dff9c41f55ac9db1cbb5a23f23688e03a5ad3a9a61fa`  
		Last Modified: Fri, 08 Sep 2017 14:48:17 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1e5dc73154c8b6d49188d561f8a48afa624e118d79dc8d2dda9d672a6c93e4`  
		Last Modified: Fri, 08 Sep 2017 14:48:22 GMT  
		Size: 14.5 MB (14450335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0fd830e39a0af128577f8fbbef982aed3435a1efa1a0b6be6e5b9464bf2b097
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97401925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267d67fb143214dd38b8bf4e0450a9ebcebbbe9d1bf25c69842c27127057b46a`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:17:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:17:01 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 01:17:01 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 01:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:17:02 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 01:18:02 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:18:02 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 01:18:02 GMT
USER [user]
# Fri, 08 Sep 2017 01:18:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b676e9b8213dc21a5ff4d2f5382386559bee357259e5032e9d72316ba5d17be7`  
		Last Modified: Fri, 08 Sep 2017 01:18:20 GMT  
		Size: 32.9 MB (32862966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287a91c6a95cfe46f948ffd5a719ed21b8fe09bbfaa555fe0ee169527d815eae`  
		Last Modified: Fri, 08 Sep 2017 01:18:10 GMT  
		Size: 4.5 KB (4451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a24ae4c938737866051a97c325121a3f37fe1c6459e7b289f96ba5dc219cfd2`  
		Last Modified: Fri, 08 Sep 2017 01:18:15 GMT  
		Size: 12.7 MB (12724938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:68e1320646637966c67a026495ff617f412a24a5d8aca68a2c09b76044e29117
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98792373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02758d4c956f8d504e31e114eceb48a8af038537f73916e5ac68c5f0657147e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:43:44 GMT
ENV HOME=/home/user
# Fri, 08 Sep 2017 05:43:44 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Sep 2017 05:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:43:45 GMT
ENV IRSSI_VERSION=1.0.4
# Fri, 08 Sep 2017 05:44:35 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:44:35 GMT
WORKDIR /home/user
# Fri, 08 Sep 2017 05:44:35 GMT
USER [user]
# Fri, 08 Sep 2017 05:44:35 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eafb3802fb5850da75355184a0e22a0fb13d51f6c1cf1c8bfa8b95f50b3a1b`  
		Last Modified: Fri, 08 Sep 2017 05:44:58 GMT  
		Size: 33.5 MB (33544527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703e0009ec36e4a53d6f2c9c4bf6bace2564dd722d8e531fb2891b413fe5e2c7`  
		Last Modified: Fri, 08 Sep 2017 05:44:51 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81191a41e6bb93b8d8f0d0093574b435a5a10b291a00840f4330f9b44b35f42e`  
		Last Modified: Fri, 08 Sep 2017 05:44:53 GMT  
		Size: 12.5 MB (12454616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
