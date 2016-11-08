## `irssi:debian`

```console
$ docker pull irssi@sha256:b387e6e8ebe8bbe79d3cadd3ab2d878df74a5a0b29fbb66223c1144d60855c2b
```

-	Platforms:
	-	linux; amd64

### `irssi:debian` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95695888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a1a8ab0d5b2eb53090193a64a95b0db1c82e2603c0d5fb1aa9cc72177fb7b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:03:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:03:36 GMT
ENV HOME=/home/user
# Tue, 08 Nov 2016 20:03:37 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 08 Nov 2016 20:03:37 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 20:03:38 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 08 Nov 2016 20:04:27 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:04:27 GMT
WORKDIR /home/user
# Tue, 08 Nov 2016 20:04:28 GMT
VOLUME [/home/user/.irssi]
# Tue, 08 Nov 2016 20:04:28 GMT
USER [user]
# Tue, 08 Nov 2016 20:04:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d0c5d9ef645e7f37bc2de813d84542c1712deba98c44cd6cbc04bc2666b369`  
		Last Modified: Tue, 08 Nov 2016 20:04:49 GMT  
		Size: 32.3 MB (32261615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da09988eb35549b1bde54e59bc1d9b90efd2ef4e9c8be2e4d1a095d52fb3c7`  
		Last Modified: Tue, 08 Nov 2016 20:04:40 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0b6859ebdb0439e4ba3a4731f1629483a73b6a72c741a8aa1738618cf82516`  
		Last Modified: Tue, 08 Nov 2016 20:04:45 GMT  
		Size: 12.1 MB (12072918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
