## `irssi:alpine`

```console
$ docker pull irssi@sha256:6e6aadd48714bc582a96f55d1c899eda27849c85246a145f6fb82c322d15da8e
```

-	Platforms:
	-	linux; amd64

### `irssi:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21505881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c426c309a3002acc38d981661e9917883ea7572b6151e248e931961a31867dc`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:34:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 30 May 2017 20:35:06 GMT
ENV HOME=/home/user
# Tue, 30 May 2017 20:35:07 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 30 May 2017 20:35:08 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 17:11:38 GMT
ENV IRSSI_VERSION=1.0.3
# Thu, 08 Jun 2017 17:12:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 08 Jun 2017 17:13:13 GMT
WORKDIR /home/user
# Thu, 08 Jun 2017 17:13:15 GMT
USER [user]
# Thu, 08 Jun 2017 17:13:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e529081753ad44079e30854d1a7615242a0776090a4643675d58d2a7becdf5e`  
		Last Modified: Tue, 30 May 2017 20:36:21 GMT  
		Size: 350.6 KB (350628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a50c57dbe600edd4195da35db92b385586ce74f2522c3603c2e567bd5ca6ed0`  
		Last Modified: Tue, 30 May 2017 20:36:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acea50e75078730d91ecf8269986f52ef2a6275f8c7b4e8540a298b49077e0d`  
		Last Modified: Thu, 08 Jun 2017 17:16:43 GMT  
		Size: 19.2 MB (19186064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
