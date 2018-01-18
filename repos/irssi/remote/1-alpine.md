## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:b1ddabe45e6a5f54216574d9eccb14256fdbb5d6fb258fb5ff6ebda82b41baf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
