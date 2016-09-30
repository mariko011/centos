## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:731c9b9d62a1021844b4a906e756473669764e5380174acc10aeb38f6ce79078
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19492846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a0a3f8f5c0d790939807481823ad5908f15e865cee7e1a8e9bd2ff27656a1`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:53 GMT
ADD file:c42c4568b2624d4cd140c00d14ead8fbc20dd53cff1bd5e5c2af558c9fab79b2 in / 
# Fri, 23 Sep 2016 17:00:56 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 23 Sep 2016 17:00:56 GMT
ENV HOME=/home/user
# Fri, 23 Sep 2016 17:00:57 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 23 Sep 2016 17:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:00:58 GMT
ENV IRSSI_VERSION=0.8.20
# Fri, 23 Sep 2016 17:01:41 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 23 Sep 2016 17:01:42 GMT
WORKDIR /home/user
# Fri, 23 Sep 2016 17:01:42 GMT
VOLUME [/home/user/.irssi]
# Fri, 23 Sep 2016 17:01:42 GMT
USER [user]
# Fri, 23 Sep 2016 17:01:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0a98829b155f259d7089ff85e9a6769c72cf5aa674c0ef6169f5305ef6b85340`  
		Last Modified: Fri, 23 Sep 2016 16:30:40 GMT  
		Size: 2.3 MB (2323433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf9bd7c4424748aaea81df2a7ac688b056272d7dc44115b6a301fcd143f9958`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 567.1 KB (567067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f92ba8f57c0add32c169f01de4a3df779f3a8eb1454741244e5f86aba62af8`  
		Last Modified: Fri, 23 Sep 2016 17:01:50 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3172da2add130a00ece247ffaa5724bbfb7c58e7d7505ec5ac57e72471902b03`  
		Last Modified: Fri, 23 Sep 2016 17:01:56 GMT  
		Size: 16.6 MB (16601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
