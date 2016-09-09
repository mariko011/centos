## `irssi:0-debian`

```console
$ docker pull irssi@sha256:434024b8ab78dfba26608c734eeee39f6cd776a997f01c670e82d4d8a04093cd
```

-	Platforms:
	-	linux; amd64

### `irssi:0-debian` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95687490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93fc3b75d4286061c58704366fdbc40fb78f813f4ba9feb5990f63a5f8159527`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 04:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libglib2.0-0 		libwww-perl 		perl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:40:55 GMT
ENV HOME=/home/user
# Fri, 29 Jul 2016 04:40:57 GMT
RUN useradd --create-home --home-dir $HOME user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 29 Jul 2016 04:40:58 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:40:59 GMT
ENV IRSSI_VERSION=0.8.19
# Fri, 29 Jul 2016 04:43:23 GMT
RUN buildDeps=' 		autoconf 		automake 		bzip2 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		make 		pkg-config 		xz-utils 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(nproc) 	&& make install 	&& rm -rf /usr/src/irssi 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 04:43:23 GMT
WORKDIR /home/user
# Fri, 29 Jul 2016 04:43:24 GMT
VOLUME [/home/user/.irssi]
# Fri, 29 Jul 2016 04:43:25 GMT
USER [user]
# Fri, 29 Jul 2016 04:43:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347c7401ddc89706307a5c47f446e7e72fade92680d10d2cee281aad44a4f694`  
		Last Modified: Fri, 29 Jul 2016 04:43:45 GMT  
		Size: 32.3 MB (32255936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c39a3fda1be1024c62c032e647ec6a980d8849c62c8c2984d88e4e14581615`  
		Last Modified: Fri, 29 Jul 2016 04:43:35 GMT  
		Size: 4.4 KB (4358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cac1963409a44b7a2aaecebe0509ec484c67a6f846957bf5b0dc2f47ca3c496`  
		Last Modified: Fri, 29 Jul 2016 04:43:40 GMT  
		Size: 12.1 MB (12061585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
