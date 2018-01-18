## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:329f2f32c006e654faf265785816b4651321d5bf292b1ae17914749aace7bf17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:e2aa160f0dfe21ae660402a9ff4466a7770ca8c97896c5707ead941cb64f4350
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18805751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa4dc7a226a0baaab078c478416859b21f0233c5de55ba03a44826e4b63c59b`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:50:29 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 09 Jan 2018 23:50:37 GMT
ENV HOME=/home/user
# Tue, 09 Jan 2018 23:50:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 09 Jan 2018 23:50:38 GMT
ENV LANG=C.UTF-8
# Wed, 17 Jan 2018 18:12:45 GMT
ENV IRSSI_VERSION=1.1.0
# Wed, 17 Jan 2018 23:48:29 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 17 Jan 2018 23:48:29 GMT
WORKDIR /home/user
# Wed, 17 Jan 2018 23:48:30 GMT
USER [user]
# Wed, 17 Jan 2018 23:48:30 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2fa7b11a18d7909645e1045258913540baaf5ba0b4f8229c781aba97bc881`  
		Last Modified: Tue, 09 Jan 2018 23:52:16 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136d74964053c2c22b570c84e4e4107aa5a48aede2ba47d86e1dfe1e57bc90b7`  
		Last Modified: Tue, 09 Jan 2018 23:52:15 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2797d16461b8575b994ad0a21752cdf2724e9a609c08bb8dfb76e4cfa4ced4`  
		Last Modified: Wed, 17 Jan 2018 23:48:54 GMT  
		Size: 16.5 MB (16461750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:1750042f4a7a493edce9ea47a43e731ce6ae42d2af6b4c7dbe58bd427ec2b4d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18956056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e4da93de627a1c406f6cee33460b1c102501bbf82918940ddeef8e9f65f49b`
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
# Thu, 18 Jan 2018 04:21:18 GMT
ENV IRSSI_VERSION=1.1.0
# Thu, 18 Jan 2018 04:23:13 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 18 Jan 2018 04:23:15 GMT
WORKDIR /home/user
# Thu, 18 Jan 2018 04:23:17 GMT
USER [user]
# Thu, 18 Jan 2018 04:23:18 GMT
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
	-	`sha256:8c94697a460488236178282c37797af07f6519d4e4da8a6370c508ad8f6e6f50`  
		Last Modified: Thu, 18 Jan 2018 04:24:04 GMT  
		Size: 16.6 MB (16591781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
