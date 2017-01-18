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
