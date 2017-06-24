## `irssi:latest`

```console
$ docker pull irssi@sha256:93286a0b1c5cca7ffe683a85c67807bce84960d0f953e66b1595c64c115539e3
```

-	Platforms:
	-	linux; amd64

### `irssi:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97882021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b681ad18df165add993ae69eed4f78a1ca6824e01c16b20f27959c2fd048879`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:23:17 GMT
ENV HOME=/home/user
# Fri, 23 Jun 2017 00:23:19 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Jun 2017 00:23:20 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 00:23:20 GMT
ENV IRSSI_VERSION=1.0.3
# Fri, 23 Jun 2017 00:24:10 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		dpkg-dev 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 00:24:11 GMT
WORKDIR /home/user
# Fri, 23 Jun 2017 00:24:12 GMT
USER [user]
# Fri, 23 Jun 2017 00:24:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91f806ce8ffcdcd7de3f6c2cab479499cfa61862bc1023bb7bf2c6aff80dc40`  
		Last Modified: Sat, 24 Jun 2017 11:36:21 GMT  
		Size: 33.0 MB (33033263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c259fee82c7fac8f3c4be9df5cb9136538a240b6ec031f3c438c83646164f213`  
		Last Modified: Sat, 24 Jun 2017 11:36:10 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c972dbbd5160da899ed42c8d77f57f068332b529a5042d6c6dd78a27a0c4de6c`  
		Last Modified: Sat, 24 Jun 2017 11:36:16 GMT  
		Size: 12.2 MB (12229554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
