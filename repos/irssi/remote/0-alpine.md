## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:e2e034de1557152ade040517f0fd1d5565f33ade9d08d4e4da222b0e8cbefd3b
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19493209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ef826d1257cf05dea26f63ff5109a005efdaeed880c423ad60aff239cdd640`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:01 GMT
ADD file:62421fd56c1160b96b28fc8320ae4332f8578329ea675d45e7c54a4d161d6d89 in / 
# Tue, 27 Dec 2016 19:14:58 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 27 Dec 2016 19:15:09 GMT
ENV HOME=/home/user
# Tue, 27 Dec 2016 19:15:10 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 27 Dec 2016 19:15:10 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 19:15:11 GMT
ENV IRSSI_VERSION=0.8.20
# Tue, 27 Dec 2016 19:16:00 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Tue, 27 Dec 2016 19:16:04 GMT
WORKDIR /home/user
# Tue, 27 Dec 2016 19:16:04 GMT
VOLUME [/home/user/.irssi]
# Tue, 27 Dec 2016 19:16:04 GMT
USER [user]
# Tue, 27 Dec 2016 19:16:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5a026b6c49645017324e8db8865843fcea2c8a65a5f7cdf79779b8fe77ae10e5`  
		Last Modified: Tue, 27 Dec 2016 18:18:30 GMT  
		Size: 2.3 MB (2323723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48307fa8e3127da99a0dad540ee1d6e4c080e1c4cafe38c3cf8ffc026bcee76b`  
		Last Modified: Tue, 27 Dec 2016 19:18:47 GMT  
		Size: 567.1 KB (567075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f483edc6a6821f96fa67da94943b8404b0019b9d76cf97b4481b10ec75fa68`  
		Last Modified: Tue, 27 Dec 2016 19:18:46 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8b8852a7ba53f3473e678d62501c75a277d4a1b086e5198c0935410c95422`  
		Last Modified: Tue, 27 Dec 2016 19:18:53 GMT  
		Size: 16.6 MB (16601144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
