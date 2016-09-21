## `irssi:0-alpine`

```console
$ docker pull irssi@sha256:ef0dec13c48b0c07cea7c49d88079d0360c4fa72eb4154c491e70812f0c51529
```

-	Platforms:
	-	linux; amd64

### `irssi:0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19489176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854156801ac5610f81c167d6e64f2207bd4a0938fd63820e3e714a349a9ad7ac`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:15 GMT
ADD file:c1fdde43e049706a06a5089f91595f2a0d621c52bb5a5bf9fa859bdfb536542a in / 
# Tue, 20 Sep 2016 00:17:45 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 20 Sep 2016 00:17:45 GMT
ENV HOME=/home/user
# Tue, 20 Sep 2016 00:17:46 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 20 Sep 2016 00:17:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Sep 2016 21:00:07 GMT
ENV IRSSI_VERSION=0.8.20
# Wed, 21 Sep 2016 21:00:50 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl-dev 		perl-dev 		pkgconf 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& rm -r "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src 	&& tar -xJf /tmp/irssi.tar.xz -C /usr/src 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi-$IRSSI_VERSION 	&& ./configure 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /usr/src/irssi-$IRSSI_VERSION 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 21 Sep 2016 21:00:50 GMT
WORKDIR /home/user
# Wed, 21 Sep 2016 21:00:51 GMT
VOLUME [/home/user/.irssi]
# Wed, 21 Sep 2016 21:00:51 GMT
USER [user]
# Wed, 21 Sep 2016 21:00:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:fe8532f07c3629ec9d74eb687d93a25e514ab1d4ddfd02d043570a80b3035741`  
		Last Modified: Mon, 19 Sep 2016 23:25:05 GMT  
		Size: 2.3 MB (2320389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166a8aa1298bf282904d092c4885884c11d28bd2f7e90777f70c8b417a84f077`  
		Last Modified: Tue, 20 Sep 2016 00:19:17 GMT  
		Size: 566.3 KB (566321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1212d241be008fd9a0a2137f4a7d5464cb8b134323618285df68570be773f6e`  
		Last Modified: Tue, 20 Sep 2016 00:19:15 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7044eb2dc0e803285e70d0706863040ee9fabc6afe38ac9858eccbe9d8883c`  
		Last Modified: Wed, 21 Sep 2016 21:02:32 GMT  
		Size: 16.6 MB (16601201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
