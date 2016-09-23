## `irssi:latest`

```console
$ docker pull irssi@sha256:cdd5a0a3a3cbf3e6a517678999480b4578f83115f2a3ed2a1894f77fd0fbc588
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
